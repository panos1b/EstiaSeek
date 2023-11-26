<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

<%
String username = request.getParameter("your_name");
String password = request.getParameter("your_pass");

if (username != null && password != null) {
    try {
        // Call the DAO to authenticate the user
        User authenticatedUser = UserDAO.authenticateUser(username, password);

        if (authenticatedUser != null) {
            // Set the user object in the session
            session.setAttribute("userObj", authenticatedUser);

            if (authenticatedUser instanceof Employer) {
                // Redirect to the employer's profile page
                response.sendRedirect("company_profile.jsp");
            } else if (authenticatedUser instanceof Applicant) {
                // Redirect to the applicant's profile page
                response.sendRedirect("applicant_profile.jsp");
            }
        } else {
            request.setAttribute("message", "Wrong username or password");
            // Redirect to the login page
            %><jsp:forward page="login.jsp"/><%
        }
    } catch (Exception e) {
        request.setAttribute("message", "Error");
        // Handle the error, show an error message, or redirect to an error page
    }
}
%>
