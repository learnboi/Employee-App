<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        .error-message {
            color: red;
        }
    </style>
    <link rel="stylesheet" href="styles/register.css">
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
<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("password");
        var confirmPasswordInput = document.getElementById("confirmpassword");
        var showPasswordCheckbox = document.getElementById("showPassword");

        if (showPasswordCheckbox.checked) {
            passwordInput.type = "text";
            confirmPasswordInput.type = "text";
        } else {
            passwordInput.type = "password";
            confirmPasswordInput.type = "password";
        }
    }
</script>
</body>
</html>
