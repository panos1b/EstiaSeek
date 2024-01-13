<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EstiaSeek</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

	<!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Font icon CSS -->
	<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

	<!-- Custom CSS -->
	<link rel="stylesheet" href="css/index_style.css">

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

	<section id="about" class="front-page-section">
		<div class="container" style="width: auto;">
			<div>
				<div id="section-title">
					<h3>About</h3>
				</div>
				<div>
					<p class="section-description">
						Are you looking for your dream job in the dynamic hospitality industry? Or maybe you're a business owner in search of passionate and dedicated individuals to join your team? Look no further! EstiaSeek is your one-stop destination for connecting employers and job seekers in the food and beverage sector. <br>
						<br> At EstiaSeek, our mission is to empower both job seekers and business owners in the food and beverage sector. We understand the unique demands and challenges of this industry, and we are committed to facilitating connections that lead to success. Whether you're a talented chef looking to showcase your culinary artistry or a restaurant owner seeking the perfect addition to your team, we're here to make it happen.
					</p>
				</div>
			</div>
		</div>
	</section>

	<section id="why-us" class="front-page-section">
		<div class="container"style="width: auto;">
			<div>
				<div id="section-title">
					<h3>Why EstiaSeek is Your Best Choice:</h3>
				</div>
				<div>
					<p id="estiaseek-advantages">
				
						<p><strong>1. Explore Endless Opportunities:</strong> Whether you're an employer with job openings in restaurants, bars, clubs, or fast-food establishments, or a candidate eager to start or advance your career in these fields, our platform offers a diverse array of job opportunities. </p> <br>

						<p><strong>2. Effortless Job Search:</strong> Job hunting has never been easier. Browse through a wide range of job listings, filter by location, job type, and other preferences to find positions that match your skills and interests.</p> <br>

						<p><strong>3. Simplified Application Process:</strong> Applying for jobs is a breeze. Create your profile, upload your resume, and express your interest in positions that catch your eye. Employers will be able to review your credentials with just a few clicks.</p> <br>

						<p><strong>4. Engage and Connect:</strong> Our interactive platform allows candidates to interact with employers and vice versa. Ask questions, schedule interviews, and get a feel for the workplace culture before making a decision.</p> <br>

						<p><strong>5. Valuable Insights:</strong> Employers can gain valuable insights into candidate profiles and access a pool of talented, motivated individuals, while candidates can explore in-depth details about job listings and companies.</p> <br>

						<p><strong>6. Community and Support:</strong> Join a thriving community of job seekers and employers. Share experiences, get advice, and find the support you need throughout your career journey.</p> <br>

						<p><strong>7. Secure and Private:</strong> Your data's privacy and security are our top priorities. We ensure that your personal information remains confidential and protected at all times.</p> <br>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section id="job-titles" class="front-page-section">
		<div class="container" style="width: auto;">
			<div>
				<div id="section-title">
					<h3>Discover Diverse Job Opportunities</h3>
				</div>
				<div>
					<p>At EstiaSeek, we cater to a wide range of roles in the food and beverage industry. Whether you're a seasoned professional seeking new opportunities or a job seeker eager to connect with potential employers, you'll discover exciting positions to work or find applicants, such as:</p>
					<br>
					<p class="section-description">
						<li><strong>Chef:</strong> Create culinary masterpieces in top-notch restaurants or showcase your skills in a bustling kitchen.</li>
						<li><strong>Waiter/Waitress:</strong> Provide exceptional service and create memorable dining experiences for customers.</li>
						<li><strong>Barista:</strong> Craft exquisite coffee and beverages in cozy cafes or trendy coffee shops.</li>
						<li><strong>Bartender:</strong> Mix and serve delicious cocktails and beverages at bars and nightclubs.</li>
						<li><strong>Restaurant Manager:</strong> Lead and manage restaurant operations, ensuring a smooth and enjoyable dining experience for guests.</li>
						<li><strong>Food Delivery Driver:</strong> Join the booming food delivery sector and bring delicious meals to customers' doors.</li>
						<li><strong>Sous Chef:</strong> Support head chefs and contribute to the creation of culinary delights in the kitchen.</li>
						<li><strong>Dishwasher/Kitchen Assistant:</strong> Play a vital role in maintaining a clean and organized kitchen environment.</li>
						<li><strong>Host/Hostess:</strong> Greet and welcome diners, setting the tone for their restaurant visit.</li>					</p>
				</div>
			</div>
		</div>
	</section>

	<%
	if (user == null) {
	%>

	<div class="accordion" id="accordionExample">
		<div class="container" style="padding: 20px; width: auto;">
		  <h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				Ready to Get Started?
			</button>
		  </h2>
		  <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
			<div class="accordion-body">
			  <strong>Signing up is quick and easy. </strong> Join our growing community of employers and job seekers, and take the first step toward your future success in the hospitality industry. Let EstiaSeek be your guide to finding the perfect match for your career goals or your business needs.
			  <div style="display: flex; align-items: center; justify-content: center;"><a style = "background-color: white; color: black; border-color: black;" type="signup" href="signup_applicant.jsp">Sign up and Begin your Journey!</a></div>
			</div>
		  </div>
		</div>
	</div>

	<%
	}
	%>
	
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
