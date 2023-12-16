<!DOCTYPE html>
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
        <title>Filtered Candidates</title>

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
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary" id="navbar-signed-in">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">EstiaSeek</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="company_profile.jsp">Profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="candidate_search.jsp">Search for Candidates</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="job_posting.jsp">Post a Job</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="login-signup">
                            <a class="btn btn-outline-success" style = "background-color:rgba(203, 207, 211, 0.188); color: black; border-color: black;" type="signout" href="login.jsp">Sign out</a>
                        </form>
                    </div>
                </div>
            </nav>

            <nav class="navbar navbar-expand-lg bg-body-tertiary" id="navbar-not-signed-in">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">EstiaSeek</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="candidate_search.jsp">Search for Professionals</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="login-signup">
                            <a class="btn btn-outline-success" style = "background-color: white; color: black; border-color: black; margin-right: 5px;" id="signin-btn" style="margin-right: 10px;" type="signin" href="login.jsp">Sign in</a>

                            <a class="btn btn-outline-success" style = "background-color:darkgray; color: white; border-color: black;" type="signup" href="signup_applicant.jsp">Sign up</a>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
    </header>

    <a class="btn btn-outline-success" style = "background-color:rgb(35, 35, 35); color: white; border-color: rgb(72, 69, 69); margin-left: 0.5cm; margin-top: 0.5cm;" type="signout" href="candidate_search.jsp">Edit Filters</a>
    <div class="container">
        <table class="table table-hover table-normal">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Username</th>
                    <th scope="col">Job Title</th>
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
                    <td><a href="applicant_profile.jsp?username="<%= applicant.getUsername()%>"><%= applicant.getUsername()%></a></td>
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

    <script src="js/signedInCheck.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>