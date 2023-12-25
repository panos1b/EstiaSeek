package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

/**
 *
 * @author Panos Dask
 */
public class ApplicantDAO {
    private static final String getApplicantsMap =""
            + "SELECT Applicants.User_ID as id, Applicants.Location as Location, applicants.Experience as Experience, Users.* FROM Applicants "
            + "LEFT JOIN Users ON Applicants.User_ID=Users.User_ID";
    public static HashMap<Integer,Applicant> getApplicantsHashMap() throws Exception{
        HashMap<Integer,Applicant> hashMap = new HashMap<>();
        
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(getApplicantsMap);

            ResultSet rs=stmt.executeQuery();

                while (rs.next()) {
                    hashMap.put(rs.getInt("id"), 
                            new Applicant(
                                    rs.getInt("Users.User_ID"),
                                    rs.getString("Name"),
                                    rs.getString("Email"),
                                    rs.getString("Password"),
                                    rs.getString("Bio"),
                                    rs.getString("Experience"),
                                    rs.getString("Location")));
                }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }
        return hashMap;
    }
    
}
