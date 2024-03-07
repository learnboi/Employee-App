package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String url = "jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pass = "root";
        try {
            Connection conn = DriverManager.getConnection(url, user, pass);
            String SqlQuery = "INSERT INTO logindata(username,password) values(?,?);";
            PreparedStatement statement = conn.prepareStatement(SqlQuery);
            statement.setString(1, username);
            statement.setString(2, password);
            int rowsAffectedLoginData = statement.executeUpdate();
            if (rowsAffectedLoginData > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
