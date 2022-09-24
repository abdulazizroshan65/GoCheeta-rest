<%-- 
    Document   : newBooking
    Created on : 18 Sep 2022, 10:22:14
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String driverEmail = "";
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("DRIVEREMAIL")) {
            driverEmail = cookie.getValue();
        }
    }   

%>
<!DOCTYPE html>
<html>
    <head>
        <title>GoCheeta - Driver</title>
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
                        <li>
                            <a href="driver.jsp">Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="myvehicles.jsp">My Vehicles</a>
                        </li>
                        <li class="active">
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">Bookings</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li class="active">
                                  <a>Accept a Booking</a>
                              </li>
                              <li>
                                  <a href="completedbookings.jsp">Completed</a>
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
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Accept a Booking</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="driver.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="myvehicles.jsp">Vehicles</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./removeCookie.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
                
            <table class="table table-striped table-hover" style="background-color: white">
                <tbody id="tblBookings">
                    <thead>
                        <tr>
                            <th>Booking ID</th>
                            <th>Customer Name</th>
                            <th>Pickup</th>
                            <th>Drop</th>
                            <th>Distance (km)</th>
                            <th>Fare (Rs)</th>
                            <th></th>
                        </tr>
                    </thead>
                </tbody>
            </table>
             
            <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
            <script>
                addEventListener('load', (event) => {
                    getDBookings();
                }); 
                const url = "http://localhost:8080/gocheeta-rest/booking/<%= driverEmail %>";
                function getDBookings() {
                    const options = {
                        method: "GET"
                    };
                    fetch(url, options)
                        .then(res => res.json()) //covert response to json
                        .then(data => {
                        bookings = data;
                        var html;
                        for (var i=0; i<bookings.length; i++) {
                            html = html + `<tr>
                                    <td>`+bookings[i].id+`</td>
                                    <td>`+bookings[i].customerEmail+`</td>
                                    <td>`+bookings[i].pickup+`</td>
                                    <td>`+bookings[i].drop+`</td>
                                    <td>`+bookings[i].distance+`</td>
                                    <td>`+bookings[i].fare+`</td>
                                    <td><button type="submit" class="btn btn-success" onclick="acceptBooking(`+bookings[i].id+`)">Accept</button></td>
                                    </tr>`;
                        }
                        $("#tblBookings").html(html);
                     });  
                }
                
                function acceptBooking(id) {                    
                    const person = {
                        "id": id
                    }
                    const options = {
                        method: "PUT",
                        headers: {
                            "content-type" : "application/json"
                        },
                        body: JSON.stringify(person)
                    };
                    const url = "http://localhost:8080/gocheeta-rest/booking";
                    fetch(url, options)
                            .then((response) => {
                                if(response.status == 200) {
                                    alert("Booking Accepted Successfully");
                                    window.location.assign("http://localhost:8080/gocheeta-client/driver/acceptBooking.jsp");
                                } else {
                                    alert("Booking Acceptancet Failed");
                                }
                            })
                    //if updared successfully, need to display alert and refresh page
                }
            </script>
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