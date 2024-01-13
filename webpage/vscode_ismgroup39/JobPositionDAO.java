package vscode_ismgroup39;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Panos Dask
 * @author Vaggelis Talos
 * @author Eqerem Hena
 */
public class JobPositionDAO {
    // Query for Job Positions
    private static final String getJobPositionsOfEmployer = ""
            + "SELECT job_positions.* FROM job_positions "
            + "LEFT JOIN employers ON job_positions.Emp_ID=employers.User_ID "
            + "LEFT JOIN users ON employers.User_ID=users.User_ID "
            + "WHERE users.name=?";

    public static List<JobPosition> getJobPositions(Employer employer) throws Exception {
        ArrayList<JobPosition> jobPositions = new ArrayList<>();

        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(getJobPositionsOfEmployer, Statement.RETURN_GENERATED_KEYS);

            // Set values to parameter
            stmt.setString(1, employer.getUsername());

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                jobPositions.add(new JobPosition(rs.getInt("Job_ID"),
                        rs.getString("Email_For_CV"),
                        rs.getString("location"),
                        rs.getString("description"),
                        rs.getString("Experience_Required")));
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }
        return jobPositions;
    }

    private static String deleteJobPosition = "DELETE FROM job_positions WHERE Job_ID=?";

    public static void deleteJobPosition(int jobID) throws Exception {
        Connection con = null;
        JdbcManager db = new JdbcManager();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(deleteJobPosition);

            // Set values to parameter
            stmt.setInt(1, jobID);

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            db.close();
        }
    }

    public static ArrayList<JobPosition> getJobs(String position, String location, String level) throws Exception {
        Connection con;
        JdbcManager db = new JdbcManager();
        ArrayList<JobPosition> jobs = new ArrayList<>();

        try {
            con = db.getConnection();
            StringBuilder queryBuilder = new StringBuilder("SELECT * FROM job_positions WHERE 1=1");

            if (!position.isEmpty()) {
                queryBuilder.append(" AND Position LIKE ?");
            }

            if (!location.isEmpty()) {
                queryBuilder.append(" AND Location LIKE ?");
            }

            if (!level.isEmpty()) {
                queryBuilder.append(" AND Experience_Required LIKE ?");
            }

            PreparedStatement stmt = con.prepareStatement(queryBuilder.toString());
            int parameterIndex = 1;

            if (!position.isEmpty()) {
                stmt.setString(parameterIndex++, "%" + position + "%");
            }

            if (!location.isEmpty()) {
                stmt.setString(parameterIndex++, "%" + location + "%");
            }

            if (!level.isEmpty()) {
                stmt.setString(parameterIndex, "%" + level + "%");
            }
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                jobs.add(new JobPosition(rs.getInt("Job_ID"),
                        rs.getString("Position"),
                        rs.getString("Email_For_CV"),
                        rs.getString("location"),
                        rs.getString("description"),
                        rs.getString("Experience_Required")));
            }
            rs.close();
        } catch (Exception e) {
        } finally {
            try {
                db.close();
            } catch (SQLException e) {
            }
        }

        return jobs;
    }
}
