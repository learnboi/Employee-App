<%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-09
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #16a085, #3498db);
            color: #000;
            text-align: center;
            margin: 20px;
        }

        h1 {
            color: #fff;
            font-size: 48px;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
        }

        table, th, td {
            border: 1px solid #fff;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        button {
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 10px;
        }

        button:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

<h1>Hello,<%=session.getAttribute("username")%> Welcome to Profile</h1>
<p>Find your details below</p>
<table border="black">
    <tr>
        <td>
            Name
        </td>
        <td>
            <%=session.getAttribute("name")%>
        </td>
    </tr>
    <tr>
        <td>
            Id
        </td>
        <td>
            <%=session.getAttribute("id")%>
        </td>
    </tr>
    <tr>
        <td>
            Age
        </td>
        <td>
            <%=session.getAttribute("age")%>
        </td>
    </tr>
    <tr>
        <td>
            City
        </td>
        <td>
            <%=session.getAttribute("city")%>
        </td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td>
            <%=session.getAttribute("email")%>
        </td>
    </tr>
    <tr>
        <td>
            Phone
        </td>
        <td>
            <%=session.getAttribute("phone")%>
        </td>
    </tr>
</table>
<br>
<a href="link.jsp"><button>Homepage</button></a>
<a href="logout"><button>Logout</button></a>

</body>
</html>
