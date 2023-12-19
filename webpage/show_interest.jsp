<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="vscode_ismgroup39.*" %>


<!DOCTYPE html>
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

  <%@ include file="applicant_navbar_signed_in.jsp" %>


    <div class="container">
    <div class ="card-container">
        <div class="card">
            <div class="card-content">
                <h5 class="card-title">Delivery</h5>
                <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
                  Role
                  </p>
                  <div class="row">
                    <ul class="list-unstyled">
                        <li>Experience Required: Bob </li>
                        <li>Business Name: Jakson</li>
                        <li>Salary: 1000$</li>
                    </ul>    
                  </div>
                  <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
                  <br>
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
                <span class="see-more-btn"> See more</span>
            </div> 
        </div>
        <div class="card">
          <div class="card-content">
              <h5 class="card-title">Manager</h5>
              <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
                Role
                </p>
                <div class="row">
                  <ul class="list-unstyled">
                      <li>Experience Required: Bob </li>
                      <li>Business Name: Jakson</li>
                      <li>Salary: 1000$</li>
                  </ul>    
                </div>
                <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
                <br>
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
              <span class="see-more-btn"> See more</span>
          </div> 
      </div>
        <div class="card">
            <div class="card-content">
                <h5 class="card-title">Cook</h5>
                <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
                  Role
                  </p>
                  <div class="row">
                    <ul class="list-unstyled">
                        <li>Experience Required: Bob </li>
                        <li>Business Name: Jakson</li>
                        <li>Salary: 1000$</li>
                    </ul>    
                  </div>
                  <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
                  <br>
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
                <span class="see-more-btn"> See more</span>
            </div> 
        </div>
        <div class="card">
          <div class="card-content">
              <h5 class="card-title">Barista</h5>
              <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
                Role
                </p>
                <div class="row">
                  <ul class="list-unstyled">
                      <li>Experience Required: Bob </li>
                      <li>Business Name: Jakson</li>
                      <li>Salary: 1000$</li>
                  </ul>    
                </div>
                <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
                <br>
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
                  <div class="row">
                    <ul class="list-unstyled">
                        <li>Experience Required: Bob </li>
                        <li>Business Name: Jakson</li>
                        <li>Salary: 1000$</li>
                    </ul>    
                  </div>
                  <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
                  <br>
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
                      
              <span class="see-more-btn" onclick="toggleList()"> See more</span>

          </div>  
      </div>
      <div class="card">
        <div class="card-content">
            <h5 class="card-title">Waiter</h5>
            <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
              Role
              </p>
              <div class="row">
                <ul class="list-unstyled">
                    <li>Experience Required: Bob </li>
                    <li>Business Name: Jakson</li>
                    <li>Salary: 1000$</li>
                </ul>    
              </div>
              <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
              <br>
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
            <span class="see-more-btn"> See more</span>
        </div>  
    </div>
    <div class="card">
      <div class="card-content">
          <h5 class="card-title">Chef de partie</h5>
          <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
            Role
            </p>
            <div class="row">
              <ul class="list-unstyled">
                  <li>Experience Required: Bob </li>
                  <li>Business Name: Jakson</li>
                  <li>Salary: 1000$</li>
              </ul>    
            </div>
            <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
            <br>
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
          <span class="see-more-btn"> See more</span>
      </div>  
  </div>
  <div class="card">
    <div class="card-content">
        <h5 class="card-title">Head Chef</h5>
        <p class="text">From April 2024 onwards, Mastercard Network Level Services (NLS) platform will enhance Mastercard Issuer value proposition in an unparalleled way by enabling a set of optional modules to support fundamental services that customers will be able to choose from, as well as premium components. All new services will be fueled by new technologies, designed to address client feedback while being executed through a strong dedicated engagement team, providing our principal members with the adequate support.
          Role
          </p>
          <div class="row">
            <ul class="list-unstyled">
                <li>Experience Required: Bob </li>
                <li>Business Name: Jakson</li>
                <li>Salary: 1000$</li>
            </ul>    
          </div>
          <button type="button" id="interestBtn" class="btn btn-success">Interested</button>
          <br>
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
        <span class="see-more-btn"> See more</span>
    </div>  
  </div>
  </div>
</div>







    <script src="js/interest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>