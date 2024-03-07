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
    <a href="index.jsp" style="border-style: solid; border-width: thin">Back</a>
</form>
</body>
</html>
