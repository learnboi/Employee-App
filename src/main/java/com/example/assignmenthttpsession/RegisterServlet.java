package com.example.assignmenthttpsession;

import java.io.*;
import java.sql.*;

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

        String url = "jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pass = "root";
        try {
            Connection conn = DriverManager.getConnection(url, user, pass);
            String loginDataQuery = "INSERT INTO logindata(username,password) values(?,?);";
            PreparedStatement loginStatement = conn.prepareStatement(loginDataQuery);
            loginStatement.setString(1, username);
            loginStatement.setString(2, password);
            int rowsAffectedLoginData = loginStatement.executeUpdate();

            String userDataQuery = "INSERT INTO userdata(username,name,age,email,phone) values(?,?,?,?,?);";
            PreparedStatement userDataStatement = conn.prepareStatement(userDataQuery);
            userDataStatement.setString(1, username);
            userDataStatement.setString(2, name);
            userDataStatement.setString(3, age);
            userDataStatement.setString(4, email);
            userDataStatement.setString(5, phone);
            int rowsAffectedUserData = userDataStatement.executeUpdate();


            String employeeDataQuery = "INSERT INTO employeedata(id,name,city) values(?,?,?);";
            PreparedStatement employeeDataStatement = conn.prepareStatement(employeeDataQuery);
            employeeDataStatement.setString(1, id);
            employeeDataStatement.setString(2,username);
            employeeDataStatement.setString(3,city);
            int rowsAffectedEmployeeData = employeeDataStatement.executeUpdate();

            if (rowsAffectedLoginData > 0 && rowsAffectedUserData>0 && rowsAffectedEmployeeData>0){
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
