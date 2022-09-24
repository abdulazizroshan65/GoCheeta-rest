<%-- 
    Document   : remove
    Created on : 19 Sep 2022, 23:12:29
    Author     : User
--%>

<%

    for(Cookie cookie: request.getCookies()) {
        if(cookie.getName().equals("ADMINEMAIL")) {
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    response.sendRedirect("/gocheeta-client/home.jsp");

%>
