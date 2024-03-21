package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.*;
import java.util.List;
import java.util.Properties;

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
        if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
            Employeedata ed = new Employeedata();
            try {
                List<Employee> employeeList = ed.fetchEmployeeData();
                HttpSession session = request.getSession();
                session.setAttribute("employeeList",employeeList);
                session.setAttribute("username",username);
                request.getRequestDispatcher("Employee.jsp").include(request,response);
            } catch (Exception e) {
                pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
            }
        }else {
            Properties prop = new Properties();
            FileInputStream fileInputStream = new FileInputStream("C:/Users/chait/IdeaProjects/AssignmentHTTPsession/src/main/resources/config.properties");
            prop.load(fileInputStream);
            String url = prop.getProperty("url");
            String user = prop.getProperty("User");
            String pass = prop.getProperty("Pass");
            try {
                Connection conn = DriverManager.getConnection(url, user, pass);
                String Sqlquery = "SELECT username, password FROM employeedata WHERE username = ?";
                PreparedStatement statement = conn.prepareStatement(Sqlquery);
                statement.setString(1, username.toLowerCase());

                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    String storedPassword = resultSet.getString("password");
                    if (password.equals(storedPassword)) {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);
                        request.getRequestDispatcher("userdata").include(request, response);
                    } else {
                        request.getRequestDispatcher("IncorrectPassword.jsp").include(request, response);
                    }
                } else {
                    request.getRequestDispatcher("UsernotFound.jsp").include(request, response);
                }
                conn.close();
            } catch (Exception e) {
                pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
            }

        }
    }

}