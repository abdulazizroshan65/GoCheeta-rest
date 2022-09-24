<%-- 
    Document   : driver
    Created on : 18 Sep 2022, 10:19:49
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String driverEmail = "";
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("DRIVEREMAIL")) {
            driverEmail = cookie.getValue();
        }
    }   

%>
<html lang="en">
  <head>
    <title>GoCheeta Cabs - Driver</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">        
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
		<div class="p-4 pt-5">
                    <a href="#" class="img logo rounded-circle mb-5" style="background-image: url(images/user.jpg);"></a>
                    <div style="text-align: center;">
                        <a href="#" id="username">
                            <script>
                                addEventListener('load', (event) => {
                                    getUsername();
                                });                 
                                function getUsername(){
                                    const curl = "http://localhost:8080/gocheeta-rest/drivers/<%= driverEmail %>";
                                    const options = {
                                        method: "GET"
                                    };
                                    fetch(curl, options)
                                            .then(res => res.json()) //covert response to json
                                            .then(data => {
                                                document.getElementById("username").innerHTML = data.name;
                                    });   
                                }
                            </script>
                        </a>
                        <p><%= driverEmail %></p>
                    </div>
                    <ul class="list-unstyled components mb-5">
                        <li class="active">
                            <a>Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                              <a href="myvehicles.jsp">My Vehicles</a>
                        </li>
                        <li>
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Bookings</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li>
                                  <a href="acceptBooking.jsp">Accept a Booking</a>
                              </li>
                              <li>
                                  <a href="/gocheeta-client/driver/completedbookings.jsp">Completed</a>
                              </li>
                              <li>
                                  <a href="cancelledBookings.jsp">Cancelled</a>
                              </li>
                              <li>
                                  <a href="ongoingBookings.jsp">Ongoing</a>
                              </li>
                            </ul>
                        </li>
                        <li>
                              <a href="#">About Us</a>
                        </li>
                    </ul>

                    <div class="footer">
                        <a href="https://www.linkedin.com/in/abdulaziz-roshan-013938229/" target="_blank">Abdulaziz Roshan</a>
                        <p>ST20251852 | NG/BSCSD/07/01</p>
                    </div>
                </div>
            </nav>
        
            <!-- Page Content  -->
            <div id="content" class="p-4 p-md-5" style="align-content: center; background-image: url(images/taxibg.jpg); background-repeat: no-repeat; background-size: cover; height: 500px;">
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px">
              <div class="container-fluid">
                <button type="button" id="sidebarCollapse" class="btn btn-primary">
                  <i class="fa fa-bars"></i>
                  <span class="sr-only">Toggle Menu</span>
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta Taxi Service</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="myvehicles.jsp">Vehicles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="acceptBooking.jsp">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./removeCookie.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
            
            <!--Carousel Slideshow-->
            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
                </div>
                <div class="carousel-inner" align="center">
                  <div class="carousel-item active" align="center" data-bs-interval="4000">
                    <img src="images\sedan.png" align="center" alt="Sedan">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Sedan&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Luxury Maximum Comfort Drive&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="images\compact.png" alt="Compact">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Compact&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Budget Friendly Companion&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="images\van.png" alt="Van">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Van&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Family Friendly Outings&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="images\tuk.png" alt="Tuk">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Tuk&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Wave of Fresh Air Experience&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="images\bike.png" alt="Bike">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Bike&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Cheetah Even at Traffic&nbsp;</span></p>
                    </div>
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>
            
            <h2 class="mb-4" style="color: #f8b739">Welcome to GoCheeta</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
	</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
</html>
