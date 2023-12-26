<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Company Profile</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

  <!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Font Icon -->
  <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

  <!-- Main css -->
  <link rel="stylesheet" href="css/style.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>

<body>
  <%
    Employer profileUser = null;
    User user = (User) session.getAttribute("userObj");

    if (user == null) {
        // User not signed in
        %>
        <%@ include file="navbar_not_signed_in.jsp" %>
        <%

    } else {

        // User signed in
        if (user instanceof Employer) {
            // Employer signed in
            %>
            <%@ include file="employer_navbar_signed_in.jsp" %>
            <%
			
        } else {
            // Applicant signed in
            %>
            <%@ include file="applicant_navbar_signed_in.jsp" %>
            <%
        }
    }

    if (request.getParameter("username") != null) {
        String usernameParameter = request.getParameter("username");
        profileUser = (Employer) UserDAO.findUser(usernameParameter);
    } else {
        profileUser = (Employer) user;
    }
    %>
  <div class="main" style="padding: 3%;">
    <section class="Profile-Details">
      <div class="container" style="padding: 3%;">
        <div class="user-profile-content">
          <div class="user-profile-details">
            <h2 class="profile-title">Company Profile</h2>
            <div class="profile-details" style="margin-top: 3%">
              <p><strong>Name:</strong> <span id="name"><%= profileUser.getUsername()%></span> </p>
              <p><strong>Organization:</strong> <span id="organization"><%= profileUser.getOrganization()%></span></p>
              <p><strong>Email:</strong> <span id="email"><%= profileUser.getEmail()%></span></p>
              <p style="margin-top: 10px;"><strong>Bio:</strong> <span id="bio"><%= profileUser.getBio()%></span></p>
            </div>
          </div>
          <div class="user-profile-image" style="margin-top: 50px;">
            <figure>
              <img src="images/signup-image.png" alt="User Profile Image">
            </figure>
          </div>
        </div>
      </div>
      <% 
        if(request.getParameter("username") == null && user.getUsername()==profileUser.getUsername()) { 
        HashMap<Integer,Applicant> hashMap = ApplicantDAO.getApplicantsHashMap();
        List<JobPosition> jobPositions = JobPositionDAO.getJobPositions(profileUser);
        for(JobPosition jobPosition : jobPositions){
            ApplicationDAO.setApplicationsOfJob(hashMap, jobPosition);
          }
      %>
      <br>
      <br>
      <div class="container">
        <div class="user-profile-content">
          <h3 style="margin-top: 2%;">Applicants For Uploaded Jobs</h3>
          <table class="table table-hover table-normal">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Username</th>
                <th scope="col">Bio</th>
                <th scope="col">Email</th>
                <th scope="col">Experience</th>
                <th scope="col">Location</th>
                <th scope="col">Job #</th>
                <th scope="col"> </th>
              </tr>
            </thead>
            <tbody>

<%              String applicantIDParameter = request.getParameter("applicantID");

                if (applicantIDParameter != null && !applicantIDParameter.isEmpty()) {
                  try {
                    int removeID = Integer.parseInt(applicantIDParameter);
                    ApplicationDAO.deleteApplication(removeID);
                    response.sendRedirect("company_profile.jsp");
                  } catch (NumberFormatException e) {
                    e.printStackTrace();
                  }
                }

                for(JobPosition jobPosition : jobPositions){
                    List<Application> applications = jobPosition.getApplications();
                    for(Application currentApplication : applications){
                    %>

              <tr>
                <th scope="row"><%= currentApplication.getApplicant().getUserID()%></th>
                <td><a href="applicant_profile.jsp?username=<%= currentApplication.getApplicant().getUsername()%>"><%= currentApplication.getApplicant().getUsername()%></a></td>
                <td><%= currentApplication.getApplicant().getBio()%></td>
                <td><%= currentApplication.getApplicant().getEmail()%></td>
                <td><%= currentApplication.getApplicant().getExperience()%></td>
                <td><%= currentApplication.getApplicant().getLocation()%></td>
                <td><%= currentApplication.getJobPosition().getJobID() %></td>
                <td>
                  <form action="company_profile.jsp" method="post">
                      <input type="hidden" name="applicantID" value="<%= currentApplication.getApplicant().getUserID()%>">
                      <button type="submit" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                  </form>
              </td>
              </tr>
              <%
                  }
                }
%>
            </tbody>
          </table>
        </div>
      </div>
      <br>
      <br>
      <div class="container">
        <div class="user-profile-content">
          <h3 style="margin-top: 2%">Uploaded Jobs</h3>
          <table class="table table-hover table-normal">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Description</th>
                <th scope="col">Experience Required</th>
                <th scope="col">Delete Job</th>
              </tr>
            </thead>
            <tbody>
                <% 
                    for(JobPosition jobPosition : jobPositions){
                %>
              <tr>
                <th scope="row"><%= jobPosition.getJobID()%> </th>
                <td><%= jobPosition.getDescription()%></td>
                <td><%= jobPosition.getLevel()%></td>
                <td> <button type="button" class="btn btn-danger btn-sm">Delete</button> </td>
              </tr>
              <% 
                  }
              %>
            </tbody>
          </table>
        </div>
      </div>
      <% 
          } 
      %>
    </section>
  </div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>