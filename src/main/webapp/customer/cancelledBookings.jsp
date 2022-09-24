<%-- 
    Document   : cancelledBookings
    Created on : 18 Sep 2022, 10:24:57
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String customerEmail = "";
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("CUSTOMEREMAIL")) {
            customerEmail = cookie.getValue();
        }
    }   

%>
<html>
    <head>
        <title>GoCheeta - Cancelled Bookings</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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
                                    const curl = "http://localhost:8080/gocheeta-rest/customers/<%= customerEmail %>";
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
                        <p><%= customerEmail %></p>
                    </div>
                    <ul class="list-unstyled components mb-5">
                        <li>
                            <a href="../home.jsp">Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li class="active">
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">Bookings</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li>
                                  <a href="newBooking.jsp">Book a Taxi</a>
                              </li>
                              <li>
                                  <a href="completedBookings.jsp">Completed</a>
                              </li>
                              <li class="active">
                                  <a href="cancelledBookings.jsp">Cancelled</a>
                              </li>
                              <li>
                                  <a href="ongoingBooking.jsp">Ongoing</a>
                              </li>
                            </ul>
                        </li>
                        <li>
                              <a href="#">Customer Support</a>
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
            <div id="content" class="p-4 p-md-5" style="align-content: center; background-image: url(images/taxibg.jpg); background-repeat: no-repeat; background-size: cover;">
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px">
              <div class="container-fluid">
                <button type="button" id="sidebarCollapse" class="btn btn-primary">
                  <i class="fa fa-bars"></i>
                  <span class="sr-only">Toggle Menu</span>
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Cancelled Bookings</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="customer.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="newBooking.jsp">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Support</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./removeCookie.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
                
            <script>
                /*const url = "http://localhost:8080/gocheeta-rest/branch/";  
                function getDetails() {
                    let branch = "Nugegoda"; //hardcoded
                    const options = {
                        method: "GET"
                    };
                    fetch(url + branch, options)
                            .then(res => res.json()) //covert response to json
                            .then(data => {
                                let start = data.start;
                                let end = data.end;
                    });   
                }*/
            </script>    
            
            

            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px; margin-top: 2rem;">
                <div class="container-fluid">  
                <select class="form-select" aria-label="Default select example" style="margin-right: 1rem;">
                    <option>Select the Booking Type...</option>
                    <option value="1">Completed</option>
                    <option selected value="2">Cancelled</option>
                    <option value="3">Ongoing</option>
                </select>
                <button type="button" id="sidebarCollapse" class="btn btn-primary">Search</button>
                </div>
              </nav>
            
              <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mb-3">
                            <div class="row g-0">
                              <div class="col-md-3">
                                <img src="./images/user.jpg" class="img-fluid rounded-start" alt="..." style="width: 70%; margin-left: 25%; margin-top: 4%;">
                              </div>
                              <div class="col-md-7">
                                <div class="card-body">
                                  <h5 class="card-title">Card title</h5>
                                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                              </div>
                              <div class="col-md-2">
                                <button class="btn btn-primary" style="margin-top: 50%;">Button</button>
                              </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
              </div>



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