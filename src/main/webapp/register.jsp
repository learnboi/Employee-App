<%--
  Created by IntelliJ IDEA.
  User: chait
  Date: 2024-03-07
  Time: 02:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #16a085, #3498db);
            color: black;
            text-align: center;
            margin: 20px;
        }

        h1 {
            color: #fff;
            font-size: 48px;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
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

        .error-message {
            color: red;
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
            margin: 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        input[type="button"]:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }
    </style>

    <style>
        .error-message {
            color: red;
        }
    </style>
    <script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmpassword");
            var errorMessage = document.getElementById("error-message");

            if (password !== confirmPassword.value) {
                errorMessage.innerHTML = "Passwords do not match";
                return false;
            } else {
                errorMessage.innerHTML = "";
                return true;
            }
        }

        function togglePasswordVisibility() {
            var passwordInput = document.getElementById("password");
            var confirmPasswordInput = document.getElementById("confirmpassword");
            var showPasswordCheckbox = document.getElementById("showPassword");

            passwordInput.type = showPasswordCheckbox.checked ? "text" : "password";
            confirmPasswordInput.type = showPasswordCheckbox.checked ? "text" : "password";
        }
    </script>
</head>
<body>
<h1>Register Form</h1>
<form action="register" onsubmit="return validatePassword()">
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
                <label for="name">Name</label>
            </td>
            <td>
                <input type="text" name="name" id="name">
            </td>
        </tr>
        <tr>
            <td>
                <label for="age">Age</label>
            </td>
            <td>
                <input type="number" name="age" id="age">
            </td>
        </tr>
        <tr>
            <td>
                <label for="id">Id</label>
            </td>
            <td>
                <input type="number" name="id" id="id">
            </td>
        </tr>
        <tr>
            <td>
                <label for="email">Email</label>
            </td>
            <td>
                <input type="email" name="email" id="email">
            </td>
        </tr>
        <tr>
            <td>
                <label for="phone">Phone</label>
            </td>
            <td>
                <input type="number" name="phone" id="phone">
            </td>
        </tr>
        <tr>
            <td>
                <label for="city">City</label>
            </td>
            <td>
                <input type="text" name="city" id="city">
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
        <tr>
            <td>
                <label for="confirmpassword">Confirm Password</label>
            </td>
            <td>
                <input type="password" name="confirmpassword" id="confirmpassword" required>
                <span class="error-message" id="error-message"></span>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <label for="showPassword">Show Password</label>
                <input type="checkbox" id="showPassword" onchange="togglePasswordVisibility()">
            </td>
        </tr>
    </table>
    <br>

    <input type="submit" value="Register">
    <input type="reset" value="Reset">&nbsp;
    <input type="button" value="Go back!" onclick="history.back()">
</form>
</body>
</html>
