<%-- 
    Document   : branches
    Created on : 20 Sep 2022, 18:20:00
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String adminEmail = "";
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ADMINEMAIL")) {
            adminEmail = cookie.getValue();
        }
    }   

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GoCheeta - Administrator</title>
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
                                    const curl = "http://localhost:8080/gocheeta-rest/admins/<%= adminEmail %>";
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
                        <p><%= adminEmail %></p>
                    </div>
                    <ul class="list-unstyled components mb-5">
                        <li>
                            <a href="admin.jsp">Home</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">User Accounts</a>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                              <li>
                                  <a href="customerAcc.jsp">Customers</a>
                              </li>
                              <li>
                                  <a href="driverAcc.jsp">Drivers</a>
                              </li>
                              <li>
                                  <a href="adminAcc.jsp">Administrators</a>
                              </li>
                            </ul>
                        </li>
                        <li>
                            <a href="branches.jsp">Bookings</a>
                        </li>
                        <li>
                            <a href="vehicles.jsp">Vehicles</a>
                        </li>
                        <li class="nav-item active">
                            <a>Branches</a>
                        </li>
                        <li>
                             <a href="#">Sales</a>
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
                <h4 class="mb-4" style="padding-top: 1.5rem; padding-left: 1rem">GoCheeta - Branches</h4>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="admin.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customerAcc.jsp">Accounts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="bookings.jsp">Bookings</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vehicles.jsp">Vehicles</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="branches.jsp">Branches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./remove.jsp">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
                
            <table class="table table-striped table-hover" style="background-color: white">
                <tbody id="tblBranches">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>No of Drivers</th>
                            <th>No of Customers</th>
                            <th>No of Admins</th>
                            <th>No of Trips</th>
                        </tr>
                    </thead>
                </tbody>
            </table>
             
            <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
            <script>
                addEventListener('load', (event) => {
                    getBranches();
                }); 
                const url = "http://localhost:8080/gocheeta-rest/branch/";
                function getBranches() {
                    const options = {
                        method: "GET"
                    };
                    fetch(url, options)
                        .then(res => res.json()) //covert response to json
                        .then(data => {
                        console.log(data)
                        branches = data;
                        var html;
                        for (var i=0; i<branches.length; i++) {
                            html = html + `<tr>
                                    <td>`+branches[i].id+`</td>
                                    <td>`+branches[i].name+`</td>
                                    <td>`+branches[i].noOfDrivers+`</td>
                                    <td>`+branches[i].noOfCustomers+`</td>
                                    <td>`+branches[i].noOfAdmins+`</td>
                                    <td>`+branches[i].noOfTrips+`</td>
                                    </tr>`;
                        }
                        $("#tblBranches").html(html);
                     });  
                }
            </script>
            
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-radius: 10px; padding: 20px; margin-bottom: 20px">
                <form class="row g-3">
                    <div class="col-md-3">
                        <label for="inputid" class="form-label">Branch ID</label>
                        <input type="number" class="form-control" id="txtID" value="">
                    </div>
                    <div class="col-md-3">
                        <label for="inputbranch" class="form-label">Branch</label>
                        <input type="text" class="form-control" id="txtBranch" value="">
                    </div>
                    <div class="col-md-3">
                        <label for="inputdrivers" class="form-label">No Of Drivers</label>
                        <input type="number" class="form-control" id="txtNoOfDrivers" min="0" value="">
                    </div>
                    <div class="col-md-3">
                        <label for="inputcustomers" class="form-label">No Of Customers</label>
                        <input type="number" class="form-control" id="txtNoOfCustomers" min="0" value="">
                    </div>
                    <div class="col-md-3">
                        <label for="inputadmins" class="form-label">No Of Admins</label>
                        <input type="number" class="form-control" id="txtNoOfAdmins" min="0" value="">
                    </div>
                    <div class="col-md-3">
                        <label for="inputtrips" class="form-label">No Of Trips</label>
                        <input type="number" class="form-control" id="txtNoOfTrips" min="0" value="">
                    </div>
                    <div class="col-md-6" style="padding-top: 33px">
                        <button type="button" class="btn btn-warning" name="btnSearch" onclick="getBranch()">Search</button>
                        <button type="button" class="btn btn-success" name="btnInsert" onclick="addBranch()">Insert</button>
                        <button type="button" class="btn btn-info" name="btnUpdate" onclick="updateBranch()">Update</button>
                        <button type="button" class="btn btn-danger" name="btnDelete" onclick="deleteBranch()">Delete</button>
                    </div>
                </form>

                <script>
                    const burl = "http://localhost:8080/gocheeta-rest/branch/"; 
                    function getBranch() {
                        let id = document.getElementById("txtID").value;
                        const options = {
                            method: "GET"
                        };
                        fetch(burl + id, options)
                                .then(res => res.json()) //covert response to json
                                .then(data => {
                                    document.getElementById("txtID").value = data.id;
                                    document.getElementById("txtBranch").value = data.name;
                                    document.getElementById("txtNoOfDrivers").value = data.noOfDrivers;
                                    document.getElementById("txtNoOfCustomers").value = data.noOfCustomers;
                                    document.getElementById("txtNoOfAdmins").value = data.noOfAdmins;
                                    document.getElementById("txtNoOfTrips").value = data.noOfTrips;
                        });   
                    }
                    
                    function addBranch() {
                        alert("This permission is restricted")
                    }
                    
                    function updateBranch() {
                        const person = {
                            "id" : parseInt(document.getElementById("txtID").value),
                            "name" : document.getElementById("txtBranch").value,
                            "noOfDrivers" : parseInt(document.getElementById("txtNoOfDrivers").value),
                            "noOfCustomers" : parseInt(document.getElementById("txtNoOfCustomers").value),
                            "noOfAdmins" : parseInt(document.getElementById("txtNoOfAdmins").value),
                            "noOfTrips" : parseInt(document.getElementById("txtNoOfTrips").value)
                        };
                        const options = {
                            method: "PUT",
                            headers: {
                                "content-type" : "application/json"
                            },
                            body: JSON.stringify(person)
                        };
                        fetch(burl, options);
                        window.location.assign("http://localhost:8080/gocheeta-client/admin/branches.jsp");
                        alert("Branch Record Updated Successfully");
                    }
            
                    function deleteBranch() {
                        alert("This permission is restricted");
                    }
                </script>              
            </nav>
            
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