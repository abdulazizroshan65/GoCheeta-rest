<%-- 
    Document   : create
    Created on : 19 Sep 2022, 21:56:57
    Author     : User
--%>

<%
    Cookie adminEmail = new Cookie("ADMINEMAIL", request.getParameter("email"));
    
    adminEmail.setPath("/");
    adminEmail.setMaxAge(60 * 60 * 1);
    response.addCookie(adminEmail);
    
    response.sendRedirect("/gocheeta-client/admin/admin.jsp");
%>
