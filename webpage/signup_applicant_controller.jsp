<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>

<% 
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("pass");
String confirm = request.getParameter("re_pass");
String bio = request.getParameter("bio");
String location = request.getParameter("location");
String experience = request.getParameter("experience_level");

// Get the value of the checkbox from the request parameter
String agreeTermValue = request.getParameter("agree-term");
// Check if the checkbox is checked
boolean isAgreeTermChecked = "on".equals(agreeTermValue);

if (name.length() >= 1 && password.length() >= 6 && confirm.equals(password) && email != null && bio != null && location != null && experience != null && isAgreeTermChecked) {

    Connection con = null;
		
    // Define the SQL statements (to be executed)
    String newUserQuery= "INSERT INTO users (Name, Email, Password, Bio) " 
                        + " VALUES (?, ?, ?, ?);";

    String newApplicantQuery = "INSERT INTO applicants (User_ID, Experience, Location) " 
                              + " VALUES (?, ?, ?);";
    
    JdbcManager db = new JdbcManager();
            
    try {
        // Open connection and get Connection object			
        con = db.getConnection();
        
        PreparedStatement stmt = con.prepareStatement(newUserQuery, Statement.RETURN_GENERATED_KEYS);
        
        // Set values to all parameters
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, password);
        stmt.setString(4, bio);
        
        // Execute the SQL statement (INSERT)	
        stmt.executeUpdate();
        
        // Retrieve the generated key
        ResultSet generatedKeys = stmt.getGeneratedKeys();

        if (generatedKeys.next()) {
            int userId = generatedKeys.getInt(1);

            // Close first statement
            stmt.close();

            PreparedStatement stmt2 = con.prepareStatement(newApplicantQuery);
            stmt2.setInt(1, userId);
            stmt2.setString(2, experience);
            stmt2.setString(3, location);

            // Execute the second SQL statement (INSERT)
            stmt2.executeUpdate();

            // Close second statement
            stmt2.close();
        }

        generatedKeys.close();

        db.close();

        } catch (Exception e) {

            request.setAttribute("message", "Error");

        } finally {
        
        try {
            db.close();
        } catch (Exception e) {				
                
        }
        
    }

%>

     <jsp:forward page="login.jsp"/>

<%
 } else {

        request.setAttribute("message", "Please complete all fields");
 
 %>

    <jsp:forward page="signup_applicant.jsp"/>

<%
 }

%>