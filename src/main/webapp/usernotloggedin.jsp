<%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-07
  Time: 05:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login First</title>
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

        button {
            padding: 15px 30px;
            font-size: 18px;
            margin: 10px;
            cursor: pointer;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        button:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }

        a {
            text-decoration: none;
            color: #fff;
        }
    </style>
</head>
<body>
<h1>You are not logged In.</h1>
<a href="index.jsp"><button>Back</button></a>
<a href="register.jsp"><button>Register</button></a>
<a href="login.jsp"><button>Login</button></a>
<a href="index.jsp"><button>Homepage</button></a>
</body>
</html>
