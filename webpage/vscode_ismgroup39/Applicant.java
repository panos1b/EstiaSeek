package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Applicant extends User {

    private String experience;
    private String location;
    private final List<Application> applications=new ArrayList<>();

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
    
    public  void addApplication(Application application){
        applications.add(application);
    }
    
    public void removeApplication(Application application){
        applications.remove(application);
    }

    public List<Application> getApplications(){
        return applications;
    }

    public static ArrayList<Applicant> getMatches(String username, String location, String experienceLevel) {
        /**
         * Returns applicants who match the criteria. If some criteria is empty its ignored and remaining matches
         * are returned
         */
        Connection con;
        JdbcManager db = new JdbcManager();
        ArrayList<Applicant> matchedApplicants = new ArrayList<>();

        try {
            con = db.getConnection();
            StringBuilder queryBuilder = new StringBuilder("SELECT * FROM users RIGHT JOIN applicants ON users.User_ID=applicants.User_ID WHERE 1=1");

            if (!username.isEmpty()) {
                queryBuilder.append(" AND Name LIKE ?");
            }

            if (!location.isEmpty()) {
                queryBuilder.append(" AND Location LIKE ?");
            }

            if (!experienceLevel.isEmpty()) {
                queryBuilder.append(" AND Experience LIKE ?");
            }

            PreparedStatement stmt = con.prepareStatement(queryBuilder.toString());
            int parameterIndex = 1;

            if (!username.isEmpty()) {
                stmt.setString(parameterIndex++, "%" + username + "%");
            }

            if (!location.isEmpty()) {
                stmt.setString(parameterIndex++, "%" + location + "%");
            }

            if (!experienceLevel.isEmpty()) {
                stmt.setString(parameterIndex, "%" + experienceLevel + "%");
            }
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
