package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Applicant extends User {

    private String experience;
    private String location;

    /**
     * Full constructor for Applicant
     *
     * @param userID
     * @param username
     * @param email
     * @param password
     * @param bio
     * @param experience
     * @param location
     */
    public Applicant(int userID, String username, String email, String password, String bio, String experience, String location) {
        super(userID, username, email, password, bio);
        this.experience = experience;
        this.location = location;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public static ArrayList<Applicant> getMatches(String jobTitle, String location, String experienceLevel) {
        Connection con;
        JdbcManager db = new JdbcManager();
        ArrayList<Applicant> matchedApplicants = new ArrayList<Applicant>();

        try {
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users RIGHT JOIN applicants ON users.User_ID=applicants.User_ID  WHERE Name=? AND Location=? AND Experience=?");

            stmt.setString(1, jobTitle);
            stmt.setString(2, location);
            stmt.setString(3, experienceLevel);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                matchedApplicants.add(new Applicant(rs.getInt("User_ID"), rs.getString("Name"), rs.getString("Email"), rs.getString("Password"), rs.getString("Bio"), rs.getString("Experience"), rs.getString("Location")));
            }
            rs.close();
        } catch (Exception e) {
        } finally {
            try {
                db.close();
            } catch (SQLException e) {
            }
        }

        return matchedApplicants; // If authentication fails
    }
}
