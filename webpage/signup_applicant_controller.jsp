<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

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

if (name.length() >= 1 && password.length() >= 8 && confirm.equals(password) && email != null && !email.equals("") && bio != null && !bio.equals("") && location != null && experience != null && isAgreeTermChecked) {
    try {
        // Call the DAO to handle database operations
        UserDAO.createApplicant(name, email, password, bio, experience, location);

        // Redirect to login.jsp on success
        response.sendRedirect("login.jsp");
    } catch (Exception e) {
        request.setAttribute("message", e.getMessage());

        // Redirect to signup_applicant.jsp if the conditions are not met
        request.getRequestDispatcher("signup_applicant.jsp").forward(request, response);
    }
} else {

    if (email == null || email.equals("") || bio == null || bio.equals("") || location == null || experience == null || name.length() < 1) {
        request.setAttribute("message", "Please complete all fields");
    } else if (password.length() < 8) {
        request.setAttribute("message", "Password should contain at least 8 characters");
    } else if (!confirm.equals(password)) {
        request.setAttribute("message", "Passwords do not match");
    } else {
        request.setAttribute("message", "You must agree with the Terms of Service");
    }

    // Redirect to signup_applicant.jsp if the conditions are not met
    request.getRequestDispatcher("signup_applicant.jsp").forward(request, response);
}
%>
