package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * This class provides data access methods.
 */
public class UserDAO {

    // Queries for user creation
    private static final String newUserQuery = "INSERT INTO users (Name, Email, Password, Bio) VALUES (?, ?, ?, ?);";
    private static final String newEmployerQuery = "INSERT INTO employers (User_ID, Organization) VALUES (?, ?);";
    private static final String newApplicantQuery = "INSERT INTO applicants (User_ID, Experience, Location) VALUES (?, ?, ?);";

    // Queries for user authentication
    private static final String findUserQuery = "SELECT * FROM users WHERE Name=? AND Password=?;";
    private static final String findEmployerQuery = "SELECT * FROM employers WHERE User_ID=?;";
    private static final String findApplicantQuery = "SELECT * FROM applicants WHERE User_ID=?;";

    /**
     * Creates a new employer in the database.
     *
     * @param name     The name of the user.
     * @param email    The email of the user.
     * @param password The password of the user.
     * @param bio      The bio of the user.
     * @param org      The organization of the employer.
     * @throws Exception If an error occurs during database interaction.
     */
    public static void createEmployer(String name, String email, String password, String bio, String org) throws Exception {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(newUserQuery, Statement.RETURN_GENERATED_KEYS);

            // Set values to all parameters
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.setString(4, bio);

            stmt.executeUpdate();

            ResultSet generatedKeys = stmt.getGeneratedKeys();

            if (generatedKeys.next()) {
                int userId = generatedKeys.getInt(1);
                stmt.close();

                PreparedStatement stmt2 = con.prepareStatement(newEmployerQuery);
                stmt2.setInt(1, userId);
                stmt2.setString(2, org);

                stmt2.executeUpdate();
                stmt2.close();
            }

            generatedKeys.close();
        } finally {
            db.close();
        }
    }

    /**
     * Creates a new applicant in the database.
     *
     * @param name       The name of the user.
     * @param email      The email of the user.
     * @param password   The password of the user.
     * @param bio        The bio of the user.
     * @param experience The experience level of the applicant.
     * @param location   The location of the applicant.
     * @throws Exception If an error occurs during database interaction.
     */
    public static void createApplicant(String name, String email, String password, String bio, String experience, String location) throws Exception {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(newUserQuery, Statement.RETURN_GENERATED_KEYS);

            // Set values to all parameters
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.setString(4, bio);

            stmt.executeUpdate();

            ResultSet generatedKeys = stmt.getGeneratedKeys();

            if (generatedKeys.next()) {
                int userId = generatedKeys.getInt(1);
                stmt.close();

                PreparedStatement stmt2 = con.prepareStatement(newApplicantQuery);
                stmt2.setInt(1, userId);
                stmt2.setString(2, experience);
                stmt2.setString(3, location);

                stmt2.executeUpdate();
                stmt2.close();
            }

            generatedKeys.close();
        } finally {
            db.close();
        }
    }

    /**
     * Authenticates a user based on the provided username and password.
     *
     * @param username The username of the user.
     * @param password The password of the user.
     * @return The authenticated user (either an Employer or Applicant), or null if authentication fails.
     */
    public static User authenticateUser(String username, String password) {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(findUserQuery);

            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int userId = rs.getInt("User_ID");
                String name = rs.getString("Name");
                String email = rs.getString("Email");
                String userPassword = rs.getString("Password");
                String bio = rs.getString("Bio");

                // Check if the user is an employer
                PreparedStatement employerStmt = con.prepareStatement(findEmployerQuery);
                employerStmt.setInt(1, userId);
                ResultSet employerRs = employerStmt.executeQuery();

                if (employerRs.next()) {
                    String org = employerRs.getString("Organization");
                    return new Employer(userId, name, email, userPassword, bio, org);
                }

                employerRs.close();

                // Check if the user is an applicant
                PreparedStatement applicantStmt = con.prepareStatement(findApplicantQuery);
                applicantStmt.setInt(1, userId);
                ResultSet applicantRs = applicantStmt.executeQuery();

                if (applicantRs.next()) {
                    String experience = applicantRs.getString("Experience");
                    String location = applicantRs.getString("Location");
                    return new Applicant(userId, name, email, userPassword, bio, experience, location);
                }

                applicantRs.close();
            }

            rs.close();
        } catch (Exception e) {
            // Handle exceptions appropriately
            e.printStackTrace();
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                // Handle exceptions appropriately
                e.printStackTrace();
            }
        }

        return null; // If authentication fails
    }
}


