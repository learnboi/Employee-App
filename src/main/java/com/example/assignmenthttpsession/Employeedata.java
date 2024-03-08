package com.example.assignmenthttpsession;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Employeedata {
    public List<Employee> fetchEmployeeData() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pass = "root";
        Connection conn = DriverManager.getConnection(url,user,pass);
        Statement statement = conn.createStatement();
        String Sql = "SELECT * FROM employeedata";
        ResultSet resultSet = statement.executeQuery(Sql);
        List<Employee> employeelist = new ArrayList<>();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String city = resultSet.getString("city");
            Employee e = new Employee();
            e.setId(id);
            e.setName(name);
            e.setCity(city);
            employeelist.add(e);
        }
        return employeelist;
    }
}
