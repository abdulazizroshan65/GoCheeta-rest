<%-- 
    Document   : removeCookie
    Created on : 19 Sep 2022, 22:44:32
    Author     : User
--%>

<%

    for(Cookie cookie: request.getCookies()) {
        if(cookie.getName().equals("DRIVEREMAIL")) {
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    response.sendRedirect("/gocheeta-client/home.jsp");

%>
