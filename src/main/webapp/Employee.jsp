<%@ page import="java.util.List" %>
<%@ page import="com.example.assignmenthttpsession.Employee" %><%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-08
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <%
        List<Employee> list = (List<Employee>) request.getAttribute("employeeList");
        for(Employee e : list){
    %>
    <tr>
        <td><%= e.getId() %></td>
        <td><%= e.getName() %></td>
        <td><%= e.getCity() %></td>
    </tr>
<%
    }
%>
</table>
</body>
</html>
