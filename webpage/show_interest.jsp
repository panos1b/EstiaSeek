<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Show Interest</title>

    <!-- Bootstrap CSS -->
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

	  <!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

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
                <a class="btn btn-outline-success" style = "background-color:rgba(203, 207, 211, 0.188); color: black; border-color: black;" type="signout" href="login.jsp">Sign out</a>
              </form>
            </div>
          </div>
        </nav>
    </header>

    <div class="container" style="width: 1200px; margin-top: 20px;">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Job Title</th>
            <th scope="col">Experience Required</th>
            <th scope="col">Business Name</th>
            <th scope="col">Interested?</th>
          </tr>
        </thead>

        <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Cook</td>
                <td>Entry Level</td>
                <td>Everest</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Barista</td>
                <td>Intermediate</td>
                <td>Skyfall Bar Restaurant</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Waiter</td>
                <td>Senior</td>
                <td>STA KALA KATHOUMENA ATHENS</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>Cfef de partie</td>
                <td>Senior</td>
                <td>Telescope - Cafe Bar Restaurant</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>Manager</td>
                <td>Senior</td>
                <td>Vento Mykonos</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">6</th>
                <td>Delivery</td>
                <td>Intermediate</td>
                <td>To Pikantiko</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">7</th>
                <td>Head Chef</td>
                <td>Senior</td>
                <td>Mavri Thalassa</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">8</th>
                <td>Waiter</td>
                <td>Senior</td>
                <td>Ciao Italia</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">9</th>
                <td>Bartender</td>
                <td>Intermediate</td>
                <td>360 Coctail Bar</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>
            <tr>
                <th scope="row">10</th>
                <td>Executive Chef</td>
                <td>Senior</td>
                <td>Spondi Restaurant</td>
                <td> <button type="button" class="btn btn-primary btn-sm">Interested</button> </td>
            </tr>   
        </tbody>
    </table>
    </div>

</body>
</html>