package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

/**
 *
 * @author Panos Dask
 * @author Vaggelis Talos
 * @author Eqerem Hena
 */
public class ApplicationDAO {
    // Queries for user Application Gathering
    private static final String setApplicationsOfJob = ""
            + "SELECT applicants.User_ID FROM applicants "
            + "LEFT JOIN applications ON applicants.User_ID=applications.Applicant_ID "
            + "LEFT JOIN job_positions ON job_positions.Job_ID=applications.Job_ID "
            + "WHERE job_positions.Job_ID=?";

    public static void setApplicationsOfJob(HashMap<Integer, Applicant> applicantMap, JobPosition jobPosition)
            throws Exception {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(setApplicationsOfJob, Statement.RETURN_GENERATED_KEYS);

            // Set values to parameter
            stmt.setInt(1, jobPosition.getJobID());

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Application.createInstance(applicantMap.get(rs.getInt("User_ID")), jobPosition);
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }

    }

    private static final String deleteApplication = "DELETE FROM applications WHERE Applicant_ID=? AND Job_ID=?";

    public static void deleteApplication(int applicantID, int positionID) throws Exception {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(deleteApplication);

            // Set value to parameter
            stmt.setInt(1, applicantID);
            stmt.setInt(2, positionID);

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }
    }

    private static String query1 = "SELECT * FROM applications WHERE Applicant_ID = ? AND Job_ID = ?;";
    private static String query2 = "INSERT INTO `applications` (`Applicant_ID`,`Job_ID`) VALUES (?,?);";

    public static void submitApplication(int applicantID, int jobID) throws Exception {
        Connection con;
        JdbcManager db = new JdbcManager();
        try {

            con = db.getConnection();
            PreparedStatement stmt1 = con.prepareStatement(query1);
            // setting parameter
            stmt1.setInt(1, applicantID);
            stmt1.setInt(2, jobID);

            ResultSet rs = stmt1.executeQuery();

            if (rs.next()) {
                rs.close();
                stmt1.close();
                db.close();
                throw new Exception("Sorry, you have already submitted for this job!");
            }

            stmt1.close();
            rs.close();
            stmt1 = con.prepareStatement(query2);

            stmt1.setInt(1, applicantID);
            stmt1.setInt(2, jobID);

            stmt1.executeUpdate();

            stmt1.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {

            }
        }

    }
}
