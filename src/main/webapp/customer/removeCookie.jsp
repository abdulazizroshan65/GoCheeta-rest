<%-- 
    Document   : removeCookie
    Created on : 19 Sep 2022, 23:06:45
    Author     : User
--%>

<%
    for(Cookie cookie: request.getCookies()) {
        if(cookie.getName().equals("CUSTOMEREMAIL")) {
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    response.sendRedirect("/gocheeta-client/home.jsp");
%>