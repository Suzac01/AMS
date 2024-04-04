    package com.example.finalfinalbackend.controller;

    import javax.servlet.*;
    import javax.servlet.http.*;
    import javax.servlet.annotation.*;
    import java.io.IOException;
    import java.sql.*;

    import static java.lang.Class.forName;

    @WebServlet(value="/Sub")
    public class Sub extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String selectedDate = null;
            try {
                forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
                PreparedStatement ps = connection.prepareStatement("SELECT * from StudentInfo");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    String Matrixno = rs.getString("Matrixno");
                    String Course = rs.getString("Course");
                    String Semester = rs.getString("Semester");
                    String Sname = rs.getString("Sname");
                    String Section = rs.getString("Section");
                    String Tname = rs.getString("Tname");

                    if (Matrixno != null) {
                        if (request.getParameter("check_" + Matrixno) != null) {
                            boolean isChecked = Boolean.parseBoolean(request.getParameter("check_" + Matrixno));
                            if(Matrixno!= null){
                                selectedDate = request.getParameter("dateTaken");
                                System.out.println("new " + selectedDate);
                                Date date;
                                if(selectedDate!=null){
                                    date = Date.valueOf(selectedDate);
                                    System.out.println(date);
                                }else{
                                    date = new Date(121, 11, 31);
                                    System.out.println(date);
                                }
                                System.out.println("new " + selectedDate);
                                if (!isChecked) {
                                String sql = "INSERT INTO report (Matrixno, Course, Semester, Sname, Section, Tname, date) VALUES (?,?,?,?,?,?,?)";

                                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                                preparedStatement.setString(1, Matrixno);
                                preparedStatement.setString(2, Course);
                                preparedStatement.setString(3, Semester);
                                preparedStatement.setString(4, Sname);
                                preparedStatement.setString(5, Section);
                                preparedStatement.setString(6, Tname);
                                preparedStatement.setDate(7, date);

                                System.out.println("Query: " + preparedStatement);

                                int rowsAffected = preparedStatement.executeUpdate();
                                System.out.println(rowsAffected + " row(s) affected");

                                preparedStatement.close();
                            } else {
                                System.out.println(".");
                            }
                        }
                    }
                }}
                rs.close();
                ps.close();
                connection.close();

                RequestDispatcher rd = request.getRequestDispatcher("./Admin.html");
                rd.forward(request, response);

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                throw new ServletException(e);
            }
        }
    }





























    //My code//
    //package com.example.finalfinalbackend.controller;
    //
    //import javax.servlet.*;
    //import javax.servlet.http.*;
    //import javax.servlet.annotation.*;
    //import java.io.IOException;
    //import java.sql.*;
    //
    //@WebServlet(value="/Sub")
    //public class Sub extends HttpServlet {
    //    @Override
    //    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //        String date = request.getParameter("dateTaken");
    //        System.out.println(date);
    //        try {
    //                Class.forName("com.mysql.cj.jdbc.Driver");
    //                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
    //                PreparedStatement ps = connection.prepareStatement("SELECT * from StudentInfo");
    //                ResultSet rs = ps.executeQuery();
    //
    //                while (rs.next()) {
    ////                String no = rs.getString("no");
    //                    String Matrixno = rs.getString("Matrixno");
    //                    String Course = rs.getString("Course");
    //                    String Semester = rs.getString("Semester");
    //                    String Sname = rs.getString("Sname");
    //                    String Section = rs.getString("Section");
    //                    String Tname = rs.getString("Tname");
    //
    ////                String date = rs.getString("dateTaken");
    //
    //                    if (Matrixno != null) {
    //                        if (request.getParameter("check_" + Matrixno) != null) {
    //                            boolean isChecked = Boolean.parseBoolean(request.getParameter("check_" + Matrixno));
    //                            if (!isChecked) {
    //                                String sql = "INSERT INTO report (Matrixno, Course, Semester, Sname, Section, Tname, date) values (?,?,?,?,?,?,?)";
    ////                            System.out.println(Matrixno + Course +  Semester + Sname +  Section + Tname);
    //                                PreparedStatement preparedStatement = connection.prepareStatement(sql);
    //                                preparedStatement.setString(1, Matrixno);
    //                                preparedStatement.setString(2, Course);
    //                                preparedStatement.setString(3, Semester);
    //                                preparedStatement.setString(4, Sname);
    //                                preparedStatement.setString(5, Section);
    //                                preparedStatement.setString(6, Tname);
    //                                preparedStatement.setString(7, date);
    //                                System.out.println("query: " + preparedStatement);
    //                                // Execute the query
    //                                preparedStatement.executeUpdate();
    //                                RequestDispatcher rd = request.getRequestDispatcher("popup.html");
    //                                System.out.println("Data inserted on report");
    //
    //                            } else {
    //                                System.out.println(".");
    //                            }
    //                        }
    //                    }
    //                }
    //            } catch (ClassNotFoundException e) {
    //                throw new RuntimeException(e);
    //            } catch (SQLException e) {
    //                throw new RuntimeException(e);
    //            }
    //            // Establish the database connection
    //        }
    //
    //    }
    //
    //
    //
    //
    //
