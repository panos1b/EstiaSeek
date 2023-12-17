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
    // Employer signed in
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
  %>

  <div class="main" style="padding: 3%;">
    <section class="Profile-Details">
      <div class="container" style="padding: 3%;">
        <div class="user-profile-content">
          <div class="user-profile-details">
            <h2 class="profile-title">Company Profile</h2>
            <div class="profile-details" style="margin-top: 3%">
              <p><strong>Name:</strong> <span id="name">John Doe</span> </p>
              <p><strong>Organization:</strong> <span id="organization">Trifo Foods</span></p>
              <p><strong>Email:</strong> <span id="email">john@catering.com</span></p>
              <p style="margin-top: 10px;"><strong>Bio:</strong> <span id="bio">Trifo Foods, situated in the heart of
                  the city, is a culinary haven where traditional and contemporary flavors collide to create
                  mouthwatering dishes. Our diverse menu, prepared by talented chefs using the freshest ingredients,
                  caters to all tastes, from fine dining enthusiasts to those seeking a casual yet sophisticated dining
                  experience. With impeccable service and a warm, inviting ambiance, Trifo Foods promises an
                  unforgettable culinary journey for you and your loved ones. <br>
                  Join us at Trifo Foods for a memorable dining experience. Our commitment to exceptional food and
                  service ensures that every visit leaves a lasting impression, making each meal a delectable and
                  inviting adventure.</span></p>
            </div>
          </div>
          <div class="user-profile-image" style="margin-top: 50px;">
            <figure>
              <img src="images/signup-image.jpg" alt="User Profile Image">
            </figure>
          </div>
        </div>
      </div>
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
                <th scope="col">Job Title</th>
                <th scope="col">Email</th>
                <th scope="col">Experience</th>
                <th scope="col">Location</th>
                <th scope="col"> </th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <th scope="row">1</th>
                <td><a href="applicant_profile.jsp">vtalos</a></td>
                <td>Cook</td>
                <td>vtalos@catering.com</td>
                <td>Entry Level</td>
                <td>Athens</td>
                <td> <button type="button" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                </td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td><a href="applicant_profile.jsp">panos1b</a></td>
                <td>Barista</td>
                <td>panos1b@catering.com</td>
                <td>Intermediate</td>
                <td>Thessaloniki</td>
                <td> <button type="button" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td><a href="applicant_profile.jsp">redihena</a></td>
                <td>Waiter</td>
                <td>redi1@catering.com</td>
                <td>Senior</td>
                <td>Patras</td>
                <td> <button type="button" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                </td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td><a href="applicant_profile.jsp">john2003</a></td>
                <td>Dishwasher</td>
                <td>john2003@catering.com</td>
                <td>Entry Level</td>
                <td>Larissa</td>
                <td> <button type="button" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                </td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td><a href="applicant_profile.jsp">alkmini</a></td>
                <td>Manager</td>
                <td>alkmini18@catering.com</td>
                <td>Senior</td>
                <td>Heraklion</td>
                <td> <button type="button" class="btn btn-sm" style="border-color: black;">Remove Applicant</button>
                </td>
              </tr>
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
                <th scope="col">Job Title</th>
                <th scope="col">Experience Required</th>
                <th scope="col">Delete Job</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Cook</td>
                <td>Entry Level</td>
                <td> <button type="button" class="btn btn-danger btn-sm">Delete</button> </td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Barista</td>
                <td>Intermediate</td>
                <td> <button type="button" class="btn btn-danger btn-sm">Delete</button> </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Waiter</td>
                <td>Senior</td>
                <td> <button type="button" class="btn btn-danger btn-sm">Delete</button> </td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>Cfef de partie</td>
                <td>Senior</td>
                <td> <button type="button" class="btn btn-danger btn-sm">Delete</button> </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>