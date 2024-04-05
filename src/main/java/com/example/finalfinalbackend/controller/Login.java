package com.example.finalfinalbackend.controller;
import com.example.finalfinalbackend.hashPassword.HashPassword;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(value = "/Login")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("name");
        String password = request.getParameter("password");

        // Hash the password using SHA-256 algorithm
        String hashedPassword = HashPassword.Hash(password);
        System.out.println(password);
        System.out.println(hashedPassword);
        System.out.println(username);
        // Database connection setup
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");

            // Prepare SQL statement to check if username and hashed password match
            String sql = "SELECT * FROM teacher WHERE name = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, hashedPassword);
            ResultSet resultSet = preparedStatement.executeQuery();

            // If a matching user is found, forward to Admin.jsp, otherwise redirect to err.html
            if (resultSet.next()) {
                RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                rd.forward(request, response);
            } else {
                response.sendRedirect("err.html");
            }

            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    // Method to hash the password using SHA-256 algorithm
    private String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(password.getBytes());
            StringBuilder hexString = new StringBuilder();

            for (byte b : hash) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }

            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}








//package com.example.finalfinalbackend.controller;
//import com.example.finalfinalbackend.hashPassword.HashPassword;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.*;
//
//@WebServlet(value = "/Login")
//public class Login extends HttpServlet {
//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        PrintWriter out = response.getWriter();
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
//            String n = request.getParameter("name");
//            String p = HashPassword.Hash(request.getParameter("password"));
//
//            System.out.println(n + " " + p);
//            PreparedStatement ps = con.prepareStatement("select name from teacher where name=? and password=?");
//            ps.setString(1, n);
//            ps.setString(2, p);
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next()) {
//                RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
//                rd.forward(request, response);
//
//
//            } else {
//                response.setContentType("text/html");
//                RequestDispatcher rd = request.getRequestDispatcher("err.html");
//                System.out.println("I am else part");
//                rd.include(request, response);
//            }
//            rs.close();
//            ps.close();
//            con.close();
//
//        } catch (SQLException | ClassNotFoundException e) {
//            throw new ServletException(e);
//        }
//    }
//}
//
//
//
//
//
