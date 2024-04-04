package com.example.finalfinalbackend.controller;

import com.example.finalfinalbackend.hashPassword.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(value="/Signup")
public class Signup extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = request.getParameter("name");
        String b = request.getParameter("course");
        String c = request.getParameter("semester");
        String d = request.getParameter("password");

        String hashedPassword = HashPassword.HashPassword(d);

        // Database connection setup
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
            // Insert data into the database
            String sql = "INSERT INTO teacher (name, course, semester, password) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, a);
            preparedStatement.setString(2, b);
            preparedStatement.setString(3, c);
            preparedStatement.setString(4, hashedPassword); // Use hashed password
            preparedStatement.executeUpdate();

            // Close the database connection
            preparedStatement.close();
            connection.close();

            System.out.println("Signup page= " + "Data inserted successfully!");
            String redirectURL = "Login.html";

            // Perform the redirect
            response.sendRedirect(redirectURL);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.err.println("Error: " + e.getMessage());
        }
    }
}
