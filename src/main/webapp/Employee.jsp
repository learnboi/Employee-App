<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
    // Check if the session exists and if the user is logged in
    if (session == null || session.getAttribute("username") == null) {
        // If not logged in, redirect to usernotloggedin.jsp
        response.sendRedirect("usernotloggedin.jsp");
        return; // Stop further execution
    }
%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.assignmenthttpsession.Employee" %>
<%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-08
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="styles/Employee.css">
    <title>Employee</title>
</head>
<body>
<h1>Employees Details</h1>
<table border="black">
    <caption>Find all employees details below</caption>
    <th>Id</th>
    <th>Name</th>
    <th>City</th>
    <th>Email</th>
    <th>Age</th>
    <th>Phone</th>
    <%
        List<Employee> list = (List<Employee>) session.getAttribute("employeeList");
        for(Employee e : list){
    %>
    <tr>
        <td><%= e.getId() %></td>
        <td><%= e.getName() %></td>
        <td><%= e.getCity() %></td>
        <td><%= e.getEmail() %></td>
        <td><%= e.getAge() %></td>
        <td><%= e.getPhone() %></td>
    </tr>
    <%
        }
    %>
</table>
<br>
<a href="logout"><button>Logout</button></a>
<a href="link.jsp"><button>Homepage</button></a>
</body>
</html>
