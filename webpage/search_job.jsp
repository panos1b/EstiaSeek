<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Search for Jobs</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/sj_style.css">
</head>
<body>

    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.jsp">EstiaSeek</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link" href="applicant_profile.jsp">Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="search_job.jsp">Search for Jobs</a>
                  </li>
                </ul>
                <form class="d-flex" role="login-signup">
                  <a class="btn btn-outline-success" style = "background-color:rgba(203, 207, 211, 0.188); color: black; border-color: black;" type="signout" href="signup_applicant.jsp">Sign out</a>
                </form>
              </div>
            </div>
        </nav>
    </header>

<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Search for Jobs</h2>
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group" style="margin-bottom: 35px;">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Position Title"/>
                        </div>
                        <div class="form-group" style="width: 100%; border-bottom: 1px; padding-bottom: 2%; margin-bottom: 20px;">
                            <label for="location"><i class="zmdi zmdi-pin"></i></label>
                            <select id="location" name="location" style="margin-left: 8%;">
                                <option value="" disabled selected>Location</option>
                                <option value="agion oros">Agion Oros</option>
                                <option value="attica">Attica</option>
                                <option value="crete">Crete</option>
                                <option value="epirus-western macedonia">Epirus-Western Macedonia</option>
                                <option value="macedonia-thrace">Macedonia - Thrace</option>
                                <option value="peloponisos-w. greece & ionian, egean">Peloponisos-W. Greece & Ionian,
                                    Egean
                                </option>
                                <option value="thessalia-central greece">Thessalia-Central Greece</option>
                            </select>

                        </div>
                        <div class="form-group" style="width: 100%;">
                            <label for="level"><i class="zmdi zmdi-trending-up"></i></label>
                            <select id="level" name="level" style="margin-left: 8%;">
                                <option value="" disabled selected>Experience Level</option>
                                <option value="any">Any</option>
                                <option value="entry">Entry Level</option>
                                <option value="intermediate">Intermediate</option>
                                <option value="senior">Senior</option>
                            </select>
                        </div>
                        <div class="form-group form-button">
                            <a type="link" class="form-submit" href="show_interest.jsp">Search</a>
                            <!-- <input type="submit" name="signup" id="signup" class="form-submit" value="Search"/> -->
                        </div>
                    </form>
                </div>
                <div class="signup-image" style="margin-top: 0px;">
                    <figure style="padding: 10%;"><img src="images/jobsearch.png" alt="sing up image"></figure>
                </div>
            </div>
        </div>
    </section>


</div>


<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>