<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.stream.Stream"%>
<%@ page import="vscode_ismgroup39.*" %>
<%@ page import="java.util.ArrayList" %>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EstiaSeek - Show Interest</title>

    <!-- Bootstrap CSS -->
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="css/interest.css">

</head>
<body>

    <%
    String position = request.getParameter("name");
    String location = request.getParameter("location");
    String level = request.getParameter("level");

    if( position == null || position.equals("null") ){
            position="";
        }
        if(location == null || location.equals("null")){
            location="";
        }
        if(level == null ||level.equals("null")){
            level="";
        }else if(level.equals("any")){
            level="%";
        } 

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

    ArrayList<JobPosition> jobs = JobPositionDAO.getJobs(position,location,level);
    %>

    
    <div class="container">
    <%

    String jobIDParameter = request.getParameter("JobID");

                if (jobIDParameter != null && !jobIDParameter.isEmpty()) {
                  try {
                    int applicantIdd = user.getUserID();
                    int applicationID = Integer.parseInt(jobIDParameter);
                    ApplicationDAO.submitApplication(applicantIdd, applicationID);
                    //response.sendRedirect("show_interest.jsp");
         %>
                    <jsp:forward page = "show_interest.jsp">
                    <jsp:param name = "submission" value = "success"/>
                    <jsp:param name = "JobID" value = "null"/>
                    <jsp:param name = "name" value = "<%= position %>"/>
                    <jsp:param name = "location" value = "<%= location %>"/>
                    <jsp:param name = "level" value = "<%= level %>"/>
                    </jsp:forward>


            
      <%

                  } catch (NumberFormatException e) {
                    e.printStackTrace();
                  }  catch (Exception e) {
      %>
                    <jsp:forward page = "show_interest.jsp">
                    <jsp:param name = "submission" value = "error"/>
                    <jsp:param name = "JobID" value = "null"/>
                    <jsp:param name = "name" value = "<%= position %>"/>
                    <jsp:param name = "location" value = "<%= location %>"/>
                    <jsp:param name = "level" value = "<%= level %>"/>
                    </jsp:forward>
			
<%	
		            }
          }
      String submissionValue = request.getParameter("submission");

      if ("success".equals(submissionValue)) {
      %>
        <div id="successMessage" class="alert alert-success text-center" role="alert">
              You submitted your interest succesfully!
        </div>
      <%
      } else if ("error".equals(submissionValue)) {
      %>
        <div id="errorMessage" class="alert alert-danger text-center" role="alert">
							Sorry, you have already submitted for this job!
        </div>
      <%

      }
    %>

    <div class ="card-container">
    <% 
        JobPosition jb = null;

      

        Iterator<JobPosition> iterator = jobs.iterator();
        int i=1;
        while (iterator.hasNext()){
          jb = iterator.next(); ;
      %>
        <div class="card" >
            <div class="card-content">
                <h5 class="card-title"><%= jb.getPosition()%> </h5>
                <p class="text"><%= jb.getDescription()%>
                  </p>
                  <div class="row">
                    <ul class="list-unstyled">
                        <li>Experience Required: <%= jb.getLevel()%>  </li>
                        <li>Location: <%= jb.getLocation()%> </li>
                        <li>Email: <%= jb.getEmailForCV()%></li>
                    </ul>    
                  </div>
      <%
        if (user instanceof Applicant) {
          %>

                  <form action="show_interest.jsp" method="post">
                    <input type="hidden" name="JobID" value="<%= jb.getJobID()%>">
                    <input type="hidden" name="name" value="<%= position%>">
                    <input type="hidden" name="location" value="<%= location%>">
                    <input type="hidden" name="level" value="<%= level%>">
                    <button type="submit" id="interestBtn" class="btn btn-success" data-toggle="modal" data-target="#staticBackdrop2">Interested</button>
                  </form>
            <%
        }
        %>
            
                <span class="see-more-btn"> See more</span>
            </div> 
        </div>
    <%
      }
    %>
<!--
  <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel"><b style="color: rgb(13, 122, 40);">Great news! </b></h1>
        </div>
        <div class="modal-body">
        <b>Congratulations, you submitted your interest succesfully!</b>
        </div>
        <div class="modal-footer">
        <button id="closeButton" type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  -->

  </div>
</div>






    <script src="js/interest.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>
