<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usernotfound</title>
</head>
<body>
<h1>User not found</h1>
<a href='register.jsp'><button>Register here</button></a>
<input type='button' value='Go Back!' onclick='history.back()'>
<a href='index.jsp'><button>Homepage</button></a>
</body>
</html>
