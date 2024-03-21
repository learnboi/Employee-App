<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Incorrect Password</title>
    <link rel="stylesheet" href="styles/incorrectpassword.css">
</head>
<body>
<h1>Incorrect Password</h1>
<input type='button' value='Go Back!' onclick='history.back()'>
<a href="index.jsp"><button>Homepage</button></a>
</body>
</html>
