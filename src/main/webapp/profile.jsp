<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
    if(session.getAttribute("username") == null){
        response.sendRedirect("login.jsp");
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
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