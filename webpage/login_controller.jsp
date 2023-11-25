<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>

<%
String username = request.getParameter("your_name");
String password = request.getParameter("your_pass");

if (username != null && password != null) {

    Connection con = null;

    // Define the SQL statement (to be executed)
    String findUser = "SELECT * FROM users WHERE your_name=? AND your_pass=?;";
    String findEmployer = "SELECT * FROM employers WHERE User_ID=?;"
    String findApplicant = "SELECT * FROM applicants WHERE User_ID=?;"

    JdbcManager db = new JdbcManager();

    try {
        // open connection and get Connection object
        con = db.getConnection();

        PreparedStatement stmt = con.prepareStatement(findUser);

        // set values to parameter
        stmt.setString(1, username);
        stmt.setString(2, password);

        // execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            // Get user data from the ResultSet
            int userId = rs.getInt("User_ID");
            String name = rs.getString("Name");
            String email = rs.getString("Email");
            String userPassword = rs.getString("Password");
            String bio = rs.getString("Bio");

            // Check if the user is an employer
            PreparedStatement employerStmt = con.prepareStatement(findEmployer);
            employerStmt.setInt(1, userId);
            ResultSet employerRs = employerStmt.executeQuery();

            if (employerRs.next()) {
                
                String org = employerRs.getString("Organization");

                Employer employer = new Employer(userId, name, email, userPassword, bio, org);
                // Set the user object in the session
                session.setAttribute("userObj", employer);

                // Redirect to the correct profile page
                response.sendRedirect("company_profile.jsp");

            } else {

                // Check if the user is an applicant
                PreparedStatement applicantStmt = con.prepareStatement(findApplicant);
                applicantStmt.setInt(1, userId);
                ResultSet applicantRs = applicantStmt.executeQuery();

                if (applicantRs.next()) {
                    
                    String experience = applicantRs.getString("Experience");
                    String location = applicantRs.getString("Location");

                    Applicant applicant = new Applicant(userId, name, email, userPassword, bio, location);
                    // Set the user object in the session
                    session.setAttribute("userObj", applicant);

                    // Redirect to the correct profile page
                    response.sendRedirect("applicant_profile.jsp");

                }

                applicantRs.close();

            }

            employerRs.close();

        } else {
            request.setAttribute("message", "Wrong username or password");

%>
        <jsp:forward page="login.jsp"/>
<%
        }

        rs.close(); // closing ResultSet
        stmt.close(); // closing PreparedStatement
        db.close(); // closing connection

    } catch (Exception e) {

        request.setAttribute("message", "Error");

    } finally {

            try {
                    db.close();
            } catch (Exception e) {

            }

    }

}
%>