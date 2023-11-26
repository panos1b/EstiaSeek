<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

<%
String name = request.getParameter("name");
String org = request.getParameter("org_name");
String email = request.getParameter("email");
String password = request.getParameter("pass");
String confirm = request.getParameter("re_pass");
String bio = request.getParameter("bio");

// Get the value of the checkbox from the request parameter
String agreeTermValue = request.getParameter("agree-term");
// Check if the checkbox is checked
boolean isAgreeTermChecked = "on".equals(agreeTermValue);

if (name.length() >= 1 && password.length() >= 6 && confirm.equals(password) && org != null && email != null && bio != null && isAgreeTermChecked) {
    try {
        // Call the DAO to handle database operations
        UserDAO.createEmployer(name, email, password, bio, org);

        // Redirect to login.jsp on success
        response.sendRedirect("login.jsp");
    } catch (Exception e) {
        request.setAttribute("message", "Error");
    }
} else {
    request.setAttribute("message", "Please complete all fields");
    // Redirect to signup_employer.jsp if the conditions are not met
    request.getRequestDispatcher("signup_employer.jsp").forward(request, response);
}
%>
