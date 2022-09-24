<%-- 
    Document   : create
    Created on : 19 Sep 2022, 22:11:14
    Author     : User
--%>

<%
    Cookie customerEmail = new Cookie("CUSTOMEREMAIL", request.getParameter("email"));
    
    customerEmail.setPath("/");
    customerEmail.setMaxAge(60 * 60 * 1);
    response.addCookie(customerEmail);
    
    response.sendRedirect("/gocheeta-client/customer/customer.jsp");
%>
