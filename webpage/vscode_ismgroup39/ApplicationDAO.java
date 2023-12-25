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
public class ApplicationDAO {
     // Queries for user Application Gathering
    private static final String setApplicationsOfJob = ""
            + "SELECT applicants.User_ID FROM applicants "
            + "LEFT JOIN applications ON applicants.User_ID=applications.Applicant_ID "
            + "LEFT JOIN job_possitions ON job_possitions.Job_ID=applications.Job_ID "
            + "WHERE job_possitions.Job_ID=?";
    
    public static void setApplicationsOfJob(HashMap<Integer,Applicant> applicantMap, JobPosition jobPosition) throws Exception{
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(setApplicationsOfJob,Statement.RETURN_GENERATED_KEYS);

            // Set values to parameter
            stmt.setInt(1,jobPosition.getJobID());

            ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    Application.createInstance(applicantMap.get(rs.getInt("User_ID")),jobPosition);    
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }
        
    }
}
