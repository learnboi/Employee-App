<%@ page import="java.util.List" %>
<%@ page import="com.example.assignmenthttpsession.Employee" %><%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-08
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee</title>
</head>
<body>
<table border="black">
    <caption>Employee Details</caption>
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
<a href="index.jsp"><button>Back</button></a>
<a href="link.jsp"><button>Homepage</button></a>
</body>
</html>
