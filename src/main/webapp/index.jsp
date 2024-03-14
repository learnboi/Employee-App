<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
<h1>Homepage</h1>
<a href="register.jsp"><button>Register</button></a>
<a href="login.jsp"><button>Login</button></a>
<a href="usernotloggedin.jsp"><button>Profile</button></a>
</body>
</html>