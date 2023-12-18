<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EstiaSeek - Search for Candidates</title>

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

    <div class="main">  

        <section class="Candidate-Search">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image" style="margin-left: 50px; margin-right: 0px;">
                        <a href="index.jsp" class="signup-image-link">Back To Home</a>
                        <br>
                        <figure><img src="images/candidate-search.png" alt="job posting image" style="margin-top: 50px;"></figure>
                    </div>

                    <div class="signin-form">
                        <div class="form-title">
                        <h2 style="font-size: x-large; text-align: center;">Search for Candidates</h2>
                        <p style="color: #666; font-size: 80%; text-transform: uppercase; text-align: center;">All fields are optional</p>
                        </div>
                        <form action="<%=request.getContextPath() %>/candidate_list.jsp" method="POST" class="register-form" style="text-align: center;">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="your_job_title" placeholder="Username"/>
                            </div>

                            <div class="form-group" style="margin-top: 12%;">
                              <label for="location"><i class="fas fa-map-marker-alt"></i></label> 
                              <select id="location"  type="location" name="location" >
                                    <option value="" disabled selected>Location</option>
                                    <option value="">Any</option>
                                    <option value="attica">Attica</option>
                                    <option value="makedonia-thraki">Macedonia and Thrace</option>
                                    <option value="epirus-makedonia">Epirus and Western Macedonia</option>
                                    <option value="thessalia-central">Thessaly and Central Greece</option>
                                    <option value="peloponisos-w">Peloponnese and Western Greece</option>
                                    <option value="aegean">Aegean</option>
                                    <option value="crete">Crete</option>
                                    <option value="mount-athos">Monastic community of Mount Athos</option>
                              </select>
                            </div>

                          <div class="form-group" style="margin-top: 5%;">
                            <label for="experience"><i class="fas fa-star"></i></label> 
                            <select id="experience"  type="experience" name="experience_level" >
                                <option  value="" disabled selected>Experience Level</option>
                                <option value="any">Any</option>
                                <option value="entry">Entry Level</option>
                                <option value="intermediate">Intermediate</option>
                                <option value="senior">Senior</option>
                            </select>
                          </div>

                            <div class="form-group form-button">
                              <input type="submit" name="submi_form" id="submi_form" class="form-submit" value="Search"/>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>