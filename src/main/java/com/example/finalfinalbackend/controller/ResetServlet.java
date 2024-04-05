package com.example.finalfinalbackend.controller;

import com.example.finalfinalbackend.hashPassword.HashPassword;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ResetServlet", value = "/Reset-Servlet")
public class ResetServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        // Hash the new password
        String hashedPassword = HashPassword.Hash(password);

        boolean passwordResetSuccessful = resetPassword(name, hashedPassword);

        if (passwordResetSuccessful) {
            response.sendRedirect("Login.html");
        } else {
            response.sendRedirect("reset.jsp?error=password_reset_failed");
        }
    }

    private boolean resetPassword(String name, String password) {
        Connection connection = null;
        PreparedStatement statement = null;
        boolean success = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");

            String sql = "UPDATE teacher SET password = ? WHERE name = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, password);
            statement.setString(2, name);

            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                success = true;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return success;
    }
}
