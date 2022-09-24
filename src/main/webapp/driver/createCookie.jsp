<%-- 
    Document   : create
    Created on : 19 Sep 2022, 22:10:34
    Author     : User
--%>

<%
    Cookie driverEmail = new Cookie("DRIVEREMAIL", request.getParameter("email"));
    
    driverEmail.setPath("/");
    driverEmail.setMaxAge(60 * 60 * 1);
    response.addCookie(driverEmail);
    
    response.sendRedirect("/gocheeta-client/driver/driver.jsp");
%>
