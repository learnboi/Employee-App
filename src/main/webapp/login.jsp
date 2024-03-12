<%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-07
  Time: 02:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
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

        form {
            display: inline-block;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
        }

        input {
            padding: 10px;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"],
        input[type="button"] {
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
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        input[type="button"]:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<h1>Login</h1>
<form action="login">
    <table>
        <tr>
            <td>
                <label for="username">Username</label>
            </td>
            <td>
                <input type="text" name="username" id="username" required>
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Password</label>
            </td>
            <td>
                <input type="password" name="password" id="password" required>
            </td>
        </tr>
    </table>
    <br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
    <input type="button" value="Go back!" onclick="history.back()">
</form>
</body>
</html>
