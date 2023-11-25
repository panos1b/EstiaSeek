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

            // Create a User object with the retrieved data
            User user = new User(userId, name, email, userPassword, bio);

            // Check if the user is an employer
            PreparedStatement employerStmt = con.prepareStatement(findEmployer);
            employerStmt.setInt(1, userId);
            ResultSet employerRs = employerStmt.executeQuery();

            if (employerRs.next()) {
                
            } else {

                // Check if the user is an applicant
                PreparedStatement applicantStmt = con.prepareStatement(findApplicant);
                applicantStmt.setInt(1, userId);
                ResultSet applicantRs = applicantStmt.executeQuery();

                if (applicantRs.next()) {
                    // The user is an applicant
                    // Add applicant-specific logic here
                    // For example, set a flag in the User object
                    user.setApplicant(true);
                }

            }

            // Set the user object in the session
            session.setAttribute("userObj", user);

            response.sendRedirect("dashboard_ex2_8210146.jsp");
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