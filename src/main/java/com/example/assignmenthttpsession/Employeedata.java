package com.example.assignmenthttpsession;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class Employeedata {
    public List<Employee> fetchEmployeeData() throws SQLException, IOException {
        Properties prop = new Properties();
        FileInputStream fileInputStream = new FileInputStream("C:/Users/chait/IdeaProjects/AssignmentHTTPsession/src/main/resources/config.properties");
        prop.load(fileInputStream);
        String url = prop.getProperty("url");
        String user = prop.getProperty("User");
        String pass = prop.getProperty("Pass");
        Connection conn = DriverManager.getConnection(url,user,pass);
        Statement statement = conn.createStatement();
        String Sql = "SELECT * FROM employeedata";
        ResultSet resultSet = statement.executeQuery(Sql);
        List<Employee> employeelist = new ArrayList<>();
        while (resultSet.next()){
            String id = resultSet.getString("id");
            String name = resultSet.getString("name");
            String city = resultSet.getString("city");
            String email = resultSet.getString("email");
            String phone = resultSet.getString("phone");
            int age = resultSet.getInt("age");

            Employee e = new Employee();
            e.setId(id);
            e.setName(name);
            e.setCity(city);
            e.setPhone(phone);
            e.setAge(age);
            e.setEmail(email);
            employeelist.add(e);
        }
        return employeelist;
    }
}
