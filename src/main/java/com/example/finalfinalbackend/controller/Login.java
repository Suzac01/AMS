package com.example.finalfinalbackend.controller;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(value = "/Login")
public class Login extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/backend", "root", "123");
            String n = request.getParameter("name");
            String p = request.getParameter("password");

//            System.out.println(n + " " + p);
            PreparedStatement ps = con.prepareStatement("select name from teacher where name=? and password=?");
            ps.setString(1, n);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                rd.forward(request, response);
            } else {
                response.setContentType("text/html");
                RequestDispatcher rd = request.getRequestDispatcher("/err.html");
                rd.include(request, response);

            }
            rs.close();
            ps.close();
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }
}





