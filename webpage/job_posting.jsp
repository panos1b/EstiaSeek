<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Job Posting Page</title>

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

    <%@ include file="employer_navbar_signed_in.jsp" %>

        <section class="Job-Posting">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <a href="index.jsp" class="signup-image-link">Back To Home</a>
                        <br>
                        <figure><img src="images/posting-image.png" alt="job posting image"></figure>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Post a Job</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="your_job_title" id="your_job_title" placeholder="Job Tittle"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="fas fa-envelope"></i></label>
                                <input type="email" name="email" id="email" placeholder="CV Email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_location"><i class="fas fa-map-marker-alt"></i></label>
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

                            <div class="form-group">
                                <label for="experience"><i class="fas fa-star"></i></label> 
                                <select id="experience" name="experience_level" style="margin-left: 8%;">
                                    <option  value="" disabled selected>Experience required</option>
                                    <option value="any">Any</option>
                                    <option value="entry">Entry Level</option>
                                    <option value="intermediate">Intermediate</option>
                                    <option value="senior">Senior</option>
                                </select>
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 10%;">
                                <label for="your_job_description"><i></i></label>
                                <textarea name="your_job_description" id="your_job_description" placeholder="Description" style="resize: none; padding: 10px; width: 100%; box-sizing: border-box;"></textarea>
                            </div>
                            
                            <div class="form-group form-button">
                                <a class="form-submit" type="submit" href="company_profile.jsp">Submit!</a>
                                <!-- <input type="submit" name="submi_form" id="submi_form" class="form-submit" value="Submit!"/> -->
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>



</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>