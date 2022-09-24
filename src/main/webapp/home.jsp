<%-- 
    Document   : home
    Created on : 18 Sep 2022, 16:46:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GoCheeta Cabs - Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">        
        <link rel="stylesheet" href="style1.css" />
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body style="background-image: url('./resources/taxibg.jpg'); background-repeat: no-repeat; background-size: cover; height:  625px">
        <div class="container-fluid" style="padding-left: 0; padding-right: 0;">
          <div style="padding-top: 7rem">
              <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4rem; border-radius: 10px; margin-left: 2rem; margin-right: 2rem; margin-top: -75px;">
                <div class="container-fluid">
                  <button type="button" id="sidebarCollapse" class="btn btn-warning">
                    <i class="fa fa-bars"></i>
                    <span class="sr-only">Toggle Menu</span>
                  </button>
                  <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <i class="fa fa-bars"></i>
                  </button>
                  <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Home</h4>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <ul class="nav navbar-nav ml-auto" style="padding-left: 54rem;">
                      <li class="nav-item">
                          <a class="nav-link" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Login</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">Signup</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
              
              <!--SIGNUP FORM-->
              <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">GoCheeta Signup - Create a New Account</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                          <form class="row g-3" method="post">
                              <div class="col-12">
                                  <label for="inputfname" class="form-label">Full Name</label>
                                  <input type="text" class="form-control" name="txtfname" id="txtfname" placeholder="Abdulaziz Roshan" value="">
                              </div>
                              <div class="col-md-6">
                                  <label for="branch" class="form-label">Branch</label>
                                  <select name="branch" id="branch" class="form-control" placeholder="Nugegoda">
                                    <option selected>Nugegoda</option>
                                    <option>Galle</option>
                                    <option>Gampaha</option>
                                    <option>Jaffna</option>
                                    <option>Kandy</option>
                                    <option>Kurunegala</option>
                                  </select>
                              </div>
                              <div class="col-md-6">
                                  <label for="inputmonth" class="form-label">Telephone</label>
                                  <input type="number" class="form-control" id="telephone" value="" placeholder="0XXXXXXXXX">
                              </div>
                              <div class="col-12">
                                  <label for="inputpass" class="form-label">Email Address</label>
                                  <input type="text" class="form-control" id="txtemail" placeholder="xxxxxxxxxx@gmail.com" value="">
                              </div>
                              <div class="col-12">
                                  <label for="inputpass" class="form-label">Password</label>
                                  <input type="password" class="form-control" id="txtpass" placeholder="Must be between 8 - 15 characters" value="">
                              </div>
                              <div class="col-12">
                                  <label for="inputCpass" class="form-label">Confirm Password</label>
                                  <input type="password" class="form-control" id="txtcpass" placeholder="Re - enter your Password" value="">
                              </div>
                              <input type="button" class="btn btn-warning" name="btnSignup" value="Signup" onclick="signup()"></input>
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                          </form>
                        </div> 
                        <div class="modal-footer"></div> 
                    </div>
                  </div>
            
                <!--LOGIN FORM-->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">GoCheeta Login - Enter Email & Password</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                        <form class="row g-3" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <div class="modal-body">
                          <div class="row mb-3" style="margin-inline: 2mm;">
                            <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputEmail" value="">
                            </div>
                          </div>
                            <div class="row mb-3" style="margin-inline: 2mm;">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" id="inputPassword" value="">
                            </div>
                          </div>
                          <div class="col-12" style="margin-inline: 5mm;">
                            <label class="col-sm-2 col-form-label">Acc Type : &nbsp;</label>
                            <div class="form-check form-check-inline" style="margin-left:5mm">
                              <input class="form-check-input" type="radio" name="rdoAcc" id="customer" value="Customer" checked>
                              <label class="form-check-label" for="Customer">Customer</label>
                            </div>
                            <div class="form-check form-check-inline" style="margin-left:5mm">
                              <input class="form-check-input" type="radio" name="rdoAcc" id="driver" value="Driver">
                              <label class="form-check-label" for="Driver">Driver</label>
                            </div>
                            <div class="form-check form-check-inline" style="margin-left:9mm">
                              <input class="form-check-input" type="radio" name="rdoAcc" id="admin" value="Admin">
                              <label class="form-check-label" for="Admin">Admin</label>
                            </div>
                          </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-primary" name="btnLogin" onclick="login()">Login</button>
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>          
              
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel" style="margin-top: 100px;">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
                </div>
                <div class="carousel-inner" align="center">
                  <div class="carousel-item active" align="center" data-bs-interval="4000">
                    <img src="resources\sedan.png" align="center" alt="Sedan">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Sedan&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Luxury Maximum Comfort Drive&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="resources\compact.png" alt="Compact">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Compact&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Budget Friendly Companion&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="resources\van.png" alt="Van">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Van&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Family Friendly Outings&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="resources\tuk.png" alt="Tuk">
                    <div class="carousel-caption d-none d-md-block">
                      <h5 style="color: black;"><span style="background-color: #ffffff">&nbsp;Tuk&nbsp;</span></h5>
                      <p style="color: black;"><span style="background-color: #ffffff">&nbsp;Wave of Fresh Air Experience&nbsp;</span></p>
                    </div>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <img src="resources\bike.png" alt="Bike">
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
        </div>
        </div>
        
        <script> 
            function login() {
                let email = document.getElementById("inputEmail").value;
                let passw = document.getElementById("inputPassword").value;
                let acc;   
                const options = {
                    method: "GET"
                };
                
                if((email != "") && (passw != "")){
                    if(document.getElementById('customer').checked) {   
                        acc = "customer";
                        const url = "http://localhost:8080/gocheeta-rest/customers/"; 
                        fetch(url + email, options)
                            .then(res => res.json()) //covert response to json
                            .then(data => {
                                if ((passw == data.password) && (email == data.email)){
                                    window.location.replace("http://localhost:8080/gocheeta-client/customer/createCookie.jsp?email="+data.email);
                                } else {
                                    alert("Customer login failed. Invalid login details");
                                }
                            }); 
                    }else if(document.getElementById('driver').checked) {   
                        acc = "driver";
                        const url = "http://localhost:8080/gocheeta-rest/drivers/";                     
                        fetch(url + email, options)
                            .then(res => res.json()) //covert response to json
                            .then(data => {
                                if ((passw == data.password) && (email == data.email)){
                                    window.location.replace("http://localhost:8080/gocheeta-client/driver/createCookie.jsp?email="+data.email);
                                } else {
                                    alert("Driver login failed. Invalid login details");
                                }
                            }); 
                    }else if(document.getElementById('admin').checked) {   
                        acc = "admin";
                        const url = "http://localhost:8080/gocheeta-rest/admins/";                      
                        fetch(url + email, options)
                            .then(res => res.json()) //covert response to json
                            .then(data => {
                                if ((passw == data.password) && (email == data.email)){
                                    window.location.replace("http://localhost:8080/gocheeta-client/admin/create.jsp?email="+data.email);                                
                                } else  {
                                    alert("Admin login failed. Invalid login details");
                                }
                            }); 
                    }else{
                        alert("Please select the account type to proceed");
                    }  
                }else{
                    alert("Please fill all the required fields");
                }    
            } 
            
            function signup(){
                let pass = document.getElementById("txtpass").value;
                let telep = document.getElementById("telephone").value;
                if(telep.length == 10){
                    if((pass.length>=8) && (pass.length<=10)){
                        const curl = "http://localhost:8080/gocheeta-rest/customers/";                
                        const person = {
                            "email" : document.getElementById("txtemail").value,
                            "password" : document.getElementById("txtpass").value,
                            "name" : document.getElementById("txtfname").value,
                            "branch" : document.getElementById("branch").value,
                            "telephone" : document.getElementById("telephone").value,
                            "noOfTrips" : 0,
                            "status" : "Free"
                        };
                        const options = {
                            method: "POST",
                            headers: {
                                "content-type" : "application/json"
                            },
                            body: JSON.stringify(person)
                        };
                        fetch(curl, options)
                                .then((response) => {
                                    if(response.status == 200) {
                                        alert("User Sign up completed");
                                    } else {
                                        alert("User Sign up failed");
                                    }
                        })
                    }else{
                        alert("Password must be between 8 - 15 characters");
                    }  
                }else{
                    alert("Invalid telephone number. Please try again");
                }       
            }
        </script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    </body>
</html>
