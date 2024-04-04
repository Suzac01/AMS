//package com.example.finalfinalbackend.controller;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.*;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//
//@WebServlet(name = "Report", value = "/Report")
//public class Report extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
//
//            String a = request.getParameter("Course");
//            String b = request.getParameter("Semester");
//            String c = request.getParameter("Section");
//
//            // Corrected SQL query
//            PreparedStatement ps = con.prepareStatement("SELECT * FROM report WHERE Course=? AND Semester=? AND Section=? AND date=?");
//            Date date = null;
//
//            // Check if the datetaken parameter is provided
//            String d = request.getParameter("datetaken");
//            if (d != null && !d.isEmpty()) {
//                try {
//                    // Parse the date string using SimpleDateFormat
//                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//                    java.util.Date utilDate = sdf.parse(d);
//                    date = new Date(utilDate.getTime());
//                    System.out.println(date);
//                } catch (ParseException e) {
//                    e.printStackTrace();
//                }
//            } else {
//                date = new Date(000, 00, 00); // Assuming you want to set a default date
//                System.out.println(date);
//            }
//
//            ps.setString(1, a);
//            ps.setString(2, b);
//            ps.setString(3, c);
//            ps.setDate(4, date);
//
//            System.out.println("Course: " + a);//BUG
//            System.out.println("Semester: " + b);
//            System.out.println("Section: " + c);
//            System.out.println("Date Taken: " + d);
//            System.out.println("From Report " + ps);
//
//            SimpleDateFormat sdfOutput = new SimpleDateFormat("yyyy-MM-dd");
//            System.out.println("Formatted Date: " + sdfOutput.format(date));
//
//            System.out.println("From Report " + ps.toString());
//
//            // Execute the query
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next()) {
//                RequestDispatcher rd = request.getRequestDispatcher("Login.html");
//                rd.forward(request, response);
//            } else {
//                RequestDispatcher rd = request.getRequestDispatcher("NotInserted.html");
//                rd.forward(request, response);
//            }
//
//            // Close resources
//            rs.close();
//            ps.close();
//            con.close();
//        } catch (Exception e) {
//            e.printStackTrace(); // Log or handle the exception appropriately
//        }
//    }
//}
