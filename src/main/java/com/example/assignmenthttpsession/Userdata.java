package com.example.assignmenthttpsession;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;


@WebServlet("/userdata")
public class Userdata extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw =response.getWriter();
        try {
                HttpSession session = request.getSession(false);
                String storedUsername = (String) session.getAttribute("username");
                Properties prop = new Properties();
                FileInputStream fileInputStream = new FileInputStream("C:/Users/chait/IdeaProjects/AssignmentHTTPsession/src/main/resources/config.properties");
                prop.load(fileInputStream);
                String url = prop.getProperty("url");
                String user = prop.getProperty("User");
                String pass = prop.getProperty("Pass");
                Connection conn = DriverManager.getConnection(url, user, pass);
                Statement statement = conn.createStatement();
                String Sql = "SELECT * FROM employeedata WHERE username='" + storedUsername + "'";
                ResultSet resultSet = statement.executeQuery(Sql);
                List<Employee> userlist = new ArrayList<>();
                while (resultSet.next()) {
                    session.setAttribute("username",resultSet.getString("username"));
                    session.setAttribute("name",resultSet.getString("name"));
                    session.setAttribute("age",resultSet.getInt("age"));
                    session.setAttribute("email",resultSet.getString("email"));
                    session.setAttribute("phone",resultSet.getString("phone"));
                    session.setAttribute("city",resultSet.getString("city"));
                    session.setAttribute("id",resultSet.getString("id"));
                    RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                    rd.forward(request,response);
                }
            }catch (Exception e){
                pw.write("<h1>" + e.fillInStackTrace() + "</h1>");
            }
    }

}

