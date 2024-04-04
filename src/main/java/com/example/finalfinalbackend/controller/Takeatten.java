package com.example.finalfinalbackend.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(value = "/Takeatten")
public class Takeatten extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String Course = request.getParameter("Course");
        String Semester = request.getParameter("Semester");
        String Section = request.getParameter("Section");
        String date = request.getParameter("dateTaken");
        String Tname = request.getParameter("Tname");
        // JDBC variables
        Connection connection = null;
        ResultSet resultSet = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
            // Define the SQL query
            String sql = "SELECT * FROM StudentInfo WHERE Course = ? and Section=? and Semester=? and Tname=?";
            // Create a PreparedStatement with the query
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Course);
            preparedStatement.setString(3, Semester);
            preparedStatement.setString(2, Section);
            preparedStatement.setString(4, Tname);

            System.out.println("query: " + preparedStatement);
            // Execute the query
            resultSet = preparedStatement.executeQuery();
            RequestDispatcher rd = request.getRequestDispatcher("jspthree.jsp");
            request.setAttribute("studentInfo", resultSet);
            rd.forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
