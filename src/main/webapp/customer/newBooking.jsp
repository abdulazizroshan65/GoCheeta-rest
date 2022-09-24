<%-- 
    Document   : newBooking
    Created on : 18 Sep 2022, 10:22:14
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
        <title>GoCheeta - Customer</title>
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
                            <a href="customer.jsp">Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li class="active">
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">Bookings</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li class="active">
                                  <a>Book a Taxi</a>
                              </li>
                              <li>
                                  <a href="completedBookings.jsp">Completed</a>
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
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Book a Taxi</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="customer.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Support</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../home.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
             
            <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
            <div class="container-fluid" id="content" style="background-image: url(images/map.PNG); background-size: cover; height: 450px; border-radius: 10px">
                <form action="" method="post" style="padding-top: 5rem;">
                    <div class="row" style="padding: 0 15rem;">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Pickup</label>
                                <input type="number" class="form-control" id="pickUpHouseNo" placeholder="House No">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Pickup</label>
                                <select id="pickupst" class="form-select" aria-label="Default select example">
                                    <option selected>Street Name</option>
                                    <script>
                                        addEventListener('load', (event) => {
                                            getStreets();
                                        });
                                        function getStreets() {
                                            const url = "http://localhost:8080/gocheeta-rest/street/";                                              
                                            let branch = "Galle"; //hardcoded search param
                                            const options = {
                                                method: "GET"
                                            };
                                            fetch(url + branch, options)
                                                .then(res => res.json()) //covert response to json
                                                .then(data => {                                                    
                                                    streetList = data;
                                                    var newOption;
                                                    var html;
                                                    // create and add new options 
                                                    for (var i=0; i<streetList.length; i++) {
                                                       html = html + "<option value="+streetList[i]['start']+">"+streetList[i]['start']+"</option>";
                                                    }
                                                    
                                                    $("#pickupst").html(html);
                                                    $("#dropst").html(html);
                                            });   
                                        }
                                    </script> 
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding: 0 15rem; margin-top: 5rem;">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Drop</label>
                                <input type="number" class="form-control" id="dropHouse" placeholder="House No">
                            </div>
                        </div>
                        <div class="col-md-6"> 
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Drop</label>
                                <select id="dropst" class="form-select" aria-label="Default select example">
                                    <option selected>Street Name</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

<!--            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px; margin-top: 2rem;">
                <div class="container-fluid">  
                <select id="category" class="form-select" aria-label="Default select example" style="margin-right: 1rem; width: 50%">
                    <option selected>Choose a Vehicle Category ...</option>
                    <script>
                        addEventListener('load', (event) => {
                            getCategories();
                        });  
                        function getCategories() {
//                            const url = "http://localhost:8080/gocheeta-rest/category/";
                            const url = "http://localhost:6060/gocheeta-rest/category";
                            const options = {
                                method: "GET"
                            };
                            fetch(url , options)
                                .then(res => res.json()) //covert response to json
                                .then(data => {                                                    
                                streetList = data;
                                var newOption;
                                var html;
                                // create and add new options 
                                for (var i=0; i<streetList.length; i++) {
                                    html = html + "<option value="+streetList[i]['id']+">"+streetList[i]['type']+"</option>";
                                }
                                $("#category").html(html);
                            });   
                        }
                    </script>
                </select>
                <button type="button" id="btnSearch" class="btn btn-primary">Search</button>
                    <script> 
                         var distance;
                         function getCharge() {
                            const url = "http://localhost:8080/gocheeta-rest/charges/";   
                            var pickup = document.getElementById("pickupst").value;
                            var drop = document.getElementById("dropst").value;
                            var combo;
                            if (pickup !== drop){
                                let id = parseInt(pickup);
                                const options = {
                                    method: "GET"
                                };
                                fetch(url + id, options)
                                    .then(res => res.json()) //covert response to json
                                    .then(data => {                                                    
                                    charges = data;
                                    var html;
                                    for (var i=0; i<streetList.length; i++) {
                                        if ((charges[i]['start'] === pickup)&&(charges[i]['stop'] === drop)){
                                            combo = charges[i][combination];
                                        }
                                    }
                                });  
                            }
                         }                        
                    </script>
                <label style="margin-bottom: 0rem">Distance (km) : 0</label>
                <label style="margin-bottom: 0rem">Fare (Rs) : 0</label>
              </div>
              </nav>-->
                <table class="table table-striped table-hover" style="background-color: white; margin-top: 3rem">
                    <thead>
                            <th>Driver Name</th>
                            <th>Email</th>
                            <th>Telephone</th>
                            <th>No of Trips</th>
                            <th>.</th>
                        </thead>
                    <tbody id="tblDrivers">
                        
                    </tbody>
               </table>
        </div>
    </div>
      <script>
            addEventListener('load', (event) => {
                getDrivers();
            }); 
            function getDrivers() {
                const url = "http://localhost:8080/gocheeta-rest/drivers/";                
                const options = {
                    method: "GET"
                };

                fetch(url, options)
                    .then((response) => {
                        if(response.status == 200) {
                            response.json().then(data => {
                                drivers = data;
                                var html = '';
                                for (var i=0; i<drivers.length; i++) {
                                    html = html + `<tr>
                                        <td>`+drivers[i].name+`</td>
                                        <td>`+drivers[i].telephone+`</td>
                                        <td>`+drivers[i].noOfTrips+`</td>
                                        <td>`+drivers[i].status+`</td>
                                        <td><button type="submit" class="btn btn-primary" onclick="newBooking('`+drivers[i].email+`')">Book</button></td>
                                        </tr>`;
                                }
                                $("#tblDrivers").html(html);
                            })
                        } else {
                            console.log("error when getting drivers");
                        }
                });
            }
            
            function newBooking(mail) {
                const url = "http://localhost:8080/gocheeta-rest/booking";                                             
                
                var pickupStreet    = $("#pickupst").val();
                var dropStreet      = $("#dropst").val();
                
//                var pickupStreet    = "pick ";
//                var dropStreet      = "drop";
                
                const person = {
//                    "id" : 0,
                    "datetime" : "2022-09-25",
                    "customerEmail" : "<%= customerEmail %>",
                    "driverEmail" : mail,
                    "vehicleNo" : "N/A",
                    "status" : "Pending",
                    "pickup" : pickupStreet,
                    "drop" : dropStreet,
                    "distance" : 4,
                    "fare" : 540,
                    "feedback" : "None"
                };
                const options = {
                    method: "POST",
                    headers: {
                        "content-type" : "application/json"
                    },
                    body: JSON.stringify(person)
                };
                fetch(url, options)
                        .then((response) => {
                            if(response.status == 201) {
                                alert("Booking placed success");
                            } else {
                                alert("Booking failed. Please try again");
                            }
                        })
            }
       </script>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
</html>