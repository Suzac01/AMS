package com.example.finalfinalbackend.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebServlet(name = "ReportTwo", value = "/ReportTwo")
public class ReportTwo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement studentPs = null;
        ResultSet studentRs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
            String course = request.getParameter("Course");
            String semester = request.getParameter("Semester");
            String section = request.getParameter("Section");
            String dateParameter = request.getParameter("dateTaken");
            System.out.println(dateParameter);

            if (dateParameter != null && !dateParameter.isEmpty()) {
                try {
                    SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
                    java.util.Date utilDate = sdf.parse(dateParameter);

                    Date sqlDate = new Date(utilDate.getTime());

                    // Query the report table to get all students present on the specified date
                    PreparedStatement reportPs = con.prepareStatement("SELECT matrixno FROM report WHERE course=? AND semester=? AND section=? AND date=?");
                    reportPs.setString(1, course);
                    reportPs.setString(2, semester);
                    reportPs.setString(3, section);
                    reportPs.setString(4, dateParameter);
                    ResultSet reportRs = reportPs.executeQuery();

                    // Store the matrix numbers of students present in a HashSet for fast lookup
                    Set<String> presentStudents = new HashSet<>();
                    while (reportRs.next()) {
                        presentStudents.add(reportRs.getString("matrixno"));
                    }

                    // Iterate over the StudentInfo table and determine presence status for each student
                    List<String> statusList = new ArrayList<>();
                    studentPs = con.prepareStatement("SELECT matrixno FROM StudentInfo WHERE course=? AND semester=? AND section=?");
                    studentPs.setString(1, course);
                    studentPs.setString(2, semester);
                    studentPs.setString(3, section);
                    studentRs = studentPs.executeQuery();
                    while (studentRs.next()) {
                        String matrixNo = studentRs.getString("matrixno");
                        String status = presentStudents.contains(matrixNo) ? "Present" : "-------";
                        statusList.add(matrixNo + ": " + status);
                        System.out.println("Matrix No: " + matrixNo + ", Status: " + status);
                    }

                    // Set statusList attribute and forward the request
                    request.setAttribute("statusList", statusList);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("report.jsp");
                    dispatcher.forward(request, response);

                    // Close resources
                    reportRs.close();
                    reportPs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (studentRs != null) {
                    studentRs.close();
                }
                if (studentPs != null) {
                    studentPs.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

