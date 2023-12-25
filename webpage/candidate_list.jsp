<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.stream.Stream"%>
<%@ page import="vscode_ismgroup39.*" %>
<%@ page import="java.util.ArrayList" %>
<%
    String username = request.getParameter("username");
    String location = request.getParameter("location");
    String experienceLevel = request.getParameter("experience_level");
        if( username == null || username.equals("null") ){
            username="";
        }
        if(location == null || location.equals("null")){
            location="";
        }
        if(experienceLevel == null ||experienceLevel.equals("null")){
            experienceLevel="";
        }else if(experienceLevel.equals("any")){
            experienceLevel="%";
        } 

    ArrayList<Applicant> matchingApplicants = Applicant.getMatches(username, location, experienceLevel); //Get matching canidates
%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>EstiaSeek - Candidates</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

        <!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        
        <%
        User user = (User) session.getAttribute("userObj");
        
        if (user == null) {
        %>

            <%@ include file="navbar_not_signed_in.jsp" %>

        <%
        } else {
        %>

            <%@ include file="employer_navbar_signed_in.jsp" %>

        <%
        }
        %>

    <a class="btn btn-outline-success" style = "background-color:rgb(35, 35, 35); color: white; border-color: rgb(72, 69, 69); margin-left: 0.5cm; margin-top: 0.5cm;" type="signout" href="candidate_search.jsp">Edit Filters</a>
    <div class="container">
        <table class="table table-hover table-normal">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Username</th>
                    <th scope="col">Bio</th>
                    <th scope="col">Email</th>
                    <th scope="col">Experience</th>
                    <th scope="col">Location</th>
                </tr>
            </thead>
            <% Applicant applicant = null;
            Iterator<Applicant> iterator = matchingApplicants.iterator();
            int i=1;
            while(iterator.hasNext()){
             applicant = iterator.next(); ;%>
            <tbody> 
               <tr>
                    <th scope="row"><%= i++%></th>
                    <td><a href="applicant_profile.jsp?username=<%= applicant.getUsername()%>"><%= applicant.getUsername()%></a></td>
                    <td><%= applicant.getBio()%></td>
                    <td><%= applicant.getEmail()%></td>
                    <td><%= applicant.getExperience()%></td>
                    <td><%= applicant.getLocation()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>