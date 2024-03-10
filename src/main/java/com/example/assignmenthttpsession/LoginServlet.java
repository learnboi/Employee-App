package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.*;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("admin") && password.equals("admin")){
            Employeedata ed = new Employeedata();
            try {
                List<Employee> employeeList = ed.fetchEmployeeData();
                HttpSession session = request.getSession();
                session.setAttribute("employeeList",employeeList);
                request.getRequestDispatcher("Employee.jsp").include(request,response);
            } catch (Exception e) {
                pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
            }
        }else {
            String url = "jdbc:mysql://localhost:3306/login";
            String user = "root";
            String pass = "root";

            try {
                Connection conn = DriverManager.getConnection(url, user, pass);
                String Sqlquery = "SELECT username,password FROM logindata where username = ?";
                PreparedStatement statement = conn.prepareStatement(Sqlquery);
                statement.setString(1, username);
                ResultSet resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    String storedPassword = resultSet.getString("password");
                    if (password.equals(storedPassword)) {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        request.getRequestDispatcher("userdata").include(request, response);
                    } else {
                        request.getRequestDispatcher("incorrect-password.jsp").include(request, response);
                    }
                } else {
                    request.getRequestDispatcher("usernotfound.jsp").include(request, response);
                }
            } catch (Exception e) {
                pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
            }
        }
    }
}