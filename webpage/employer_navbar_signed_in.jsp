<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <a class="btn btn-outline-success" style = "background-color:rgba(203, 207, 211, 0.188); color: black; border-color: black;" type="signout" href="sign_out.jsp">Sign out</a>
            </form>
            </div>
        </div>
    </nav>
</header>
<head>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
</head>