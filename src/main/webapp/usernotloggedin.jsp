<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login First</title>
</head>
<body>
<h1>You are not logged In.</h1>
<a href="index.jsp"><button>Back</button></a>
<a href="register.jsp"><button>Register</button></a>
<a href="login.jsp"><button>Login</button></a>
<a href="index.jsp"><button>Homepage</button></a>
</body>
</html>
