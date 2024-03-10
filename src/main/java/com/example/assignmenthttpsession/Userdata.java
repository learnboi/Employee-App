package com.example.assignmenthttpsession;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/userdata")
public class Userdata extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw =response.getWriter();
        try {
                HttpSession session = request.getSession(false);
                String storedUsername = (String) session.getAttribute("username");
                String url = "jdbc:mysql://localhost:3306/login";
                String user = "root";
                String pass = "root";
                Connection conn = DriverManager.getConnection(url, user, pass);
                Statement statement = conn.createStatement();
                String Sql = "SELECT * FROM userdata WHERE username='" + storedUsername + "'";
                ResultSet resultSet = statement.executeQuery(Sql);
                List<Employee> userlist = new ArrayList<>();
                while (resultSet.next()) {
                    String username = resultSet.getString("username");
                    String name = resultSet.getString("name");
                    int age = resultSet.getInt("age");
                    String email = resultSet.getString("email");
                    long phone = resultSet.getLong("phone");
                    session.setAttribute("username",username);
                    session.setAttribute("name",name);
                    session.setAttribute("age",age);
                    session.setAttribute("email",email);
                    session.setAttribute("phone",phone);
                    RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                    rd.forward(request,response);
                }
            }catch (Exception e){
                pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
            }
    }

}

