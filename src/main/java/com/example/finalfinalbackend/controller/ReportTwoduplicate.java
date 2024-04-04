//package com.example.finalfinalbackend.controller;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpServletRequest;
//import javax.xml.transform.Result;
//import java.io.IOException;
//import java.sql.*;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//
//@WebServlet(name = "ReportTwoduplicate", value = "/ReportTwoduplicate")
//public class ReportTwoduplicate extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            try {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend/", "root", "123");
//
//                String course  = request.getParameter("course");
//                String semester = request.getParameter("Semester");
//                String section = request.getParameter("Section");
//
//                String dateParameter = request.getParameter("dateTaken");
//                System.out.println(dateParameter);
//                if(dateParameter !=null && !dateParameter.isEmpty()){
//                    try{
//                        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
//                        java.util.Date utilDate = sdf.parse(dateParameter);
//                        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
////                        ---------------------------------------------------------
//                        PreparedStatement studentPS = con.prepareStatement("SELECT * FROM StudentInfo where coure=? and semester=? and section=?");
//                        studentPS.setString(1, course);
//                        studentPS.setString(2, semester);
//                        studentPS.setString(3, section);
//
//                        ResultSet reportRs = studentPS.executeQuery();
//
//                        if(reportRs.next()){
//
//                            System.out.println("Student ID" + course + "is present on " + section);
//                        }
//                        else {
//                            System.out.println("Student ID" + course + "is absent on" + section);
//                        }
//
//                        reportRs.close();
//                        studentPS.close();
//
//
//                    } catch (ParseException e) {
//                        throw new RuntimeException(e);
//                    }
//
//                }
//
//
//            } catch (ClassNotFoundException e) {
//                throw new RuntimeException(e);
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//
//
//            }
//        }
//    }
//
//
//}