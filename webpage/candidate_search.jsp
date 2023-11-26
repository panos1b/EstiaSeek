<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Search for Candidates</title>

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
                        <h2 class="form-title" style="font-size: x-large;">Search for Candidates</h2>
                        <form action="<%=request.getContextPath() %>/candidate_list.jsp" method="get" class="register-form" style="text-align: center;">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="your_job_title" id="your_job_title" placeholder="Job Title"/>
                            </div>

                            <div class="form-group" style="margin-top: 12%;">
                              <label for="location"><i class="fas fa-map-marker-alt"></i></label> 
                              <select id="location"  type="location" name="location" >
                                  <option  value="" disabled selected>Location</option>
                                  <option value="agion oros">Agion Oros</option>
                                  <option value="attica">Attica</option>
                                  <option value="crete">Crete</option>
                                  <option value="epirus-western macedonia">Epirus-Western Macedonia</option>
                                  <option value="macedonia-thrace">Macedonia - Thrace</option>
                                  <option value="peloponisos-w. greece & ionian, egean">Peloponisos-W. Greece & Ionian, Egean</option>
                                  <option value="thessalia-central greece">Thessalia-Central Greece</option>
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

    <script src="js/signedInCheck.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>