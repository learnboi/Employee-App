package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String url ="jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pass = "root";

        try {
            Connection conn = DriverManager.getConnection(url, user, pass);
            String Sqlquery ="SELECT username,password FROM logindata where username = ?";
            PreparedStatement statement = conn.prepareStatement(Sqlquery);
            statement.setString(1,username);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String storedPassword = resultSet.getString("Password");
                if (password.equals(storedPassword)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    request.getRequestDispatcher("profile").include(request,response);
                } else {
                    pw.write("<h1>Incorrect Password</h1>");
                }
            } else {
                request.getRequestDispatcher("/usernotfound.jsp").include(request,response);
            }
        } catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
    }
}