package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.*;
import java.util.Properties;

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
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String id = request.getParameter("id");
        String city = request.getParameter("city");

        Properties prop = new Properties();
        FileInputStream fileInputStream = new FileInputStream("C:/Users/chait/IdeaProjects/AssignmentHTTPsession/src/main/resources/config.properties");
        prop.load(fileInputStream);
        String url = prop.getProperty("url");
        String user = prop.getProperty("User");
        String pass = prop.getProperty("Pass");
        try {
            Connection conn = DriverManager.getConnection(url, user, pass);
            String employeeDataQuery = "INSERT INTO employeedata(id,name,city,age,email,phone,username,password) values(?,?,?,?,?,?,?,?);";
            PreparedStatement employeeDataStatement = conn.prepareStatement(employeeDataQuery);
            employeeDataStatement.setString(1, id);
            employeeDataStatement.setString(2, name);
            employeeDataStatement.setString(3,city);
            employeeDataStatement.setString(4, age);
            employeeDataStatement.setString(5, email);
            employeeDataStatement.setString(6, phone);
            employeeDataStatement.setString(7, username);
            employeeDataStatement.setString(8, password);
            int rowsAffectedEmployeeData = employeeDataStatement.executeUpdate();

            if (rowsAffectedEmployeeData>0){
                request.setAttribute("username",username);
                request.setAttribute("password",password);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request,response);
            }
        } catch (Exception e) {
            pw.write("<h1>" + e.getLocalizedMessage() + "</h1>");
        }
    }
}
