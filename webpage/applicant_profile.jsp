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
	%>

    <div class="main" style="padding: 3%;">
        <section class="Profile-Details">
            <div class="container" style="padding: 3%;">
                <div class="user-profile-content">
                    <div class="user-profile-details">
                        <h2 class="profile-title" style="margin-bottom: 20px;">Applicant Profile</h2>
                        <div class="profile-details">
                            <p><strong>Name:</strong> <span id="name">Panagiotis Daskalopoulos</span> </p>
                            <p><strong>Location:</strong> <span id="location">Agion Oros</span></p>
                            <p><strong>Email:</strong> <span id="email">panos1b@catering.com</span></p>
                            <p><strong>Experience Level:</strong> <span id="experience">Intermediate</span></p>
                            <p style="margin-top: 10px;"><strong>Bio:</strong> <span id="bio">As a dedicated and passionate waiter with a commitment to providing exceptional customer service, I am excited to contribute my skills and experience to your team. With a proven track record in the hospitality industry, I am confident in my ability to enhance the dining experience for your valued patrons. <br>
                                My journey in the world of hospitality began over five years ago, and I have since developed a deep understanding of the art of serving. I have honed my abilities to anticipate the needs of guests and ensure their comfort and satisfaction throughout their dining experience. With a warm and welcoming demeanor, I pride myself on creating a friendly and inviting atmosphere for all guests, making them feel truly valued.</span></p>
                        </div>
                    </div>
                    <div class="user-profile-image" style="margin-top: 50px;">
                        <figure>
                            <img src="images/signup-image.jpg" alt="User Profile Image">
                        </figure>
                    </div>                
                </div>
            </div>
        </section>
    </div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>