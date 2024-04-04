<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/attnlg.jpg" rel="icon">
    <title>Dashboard</title>
    <link href="css/all.min.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>
<body>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }

    .report-container {
        width: 80%;
        margin: 20px auto;
        background: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    .report-header {
        text-align: center;
        background: #333;
        color: #fff;
        padding: 10px;
        font-size: 24px;
    }

    .report-content {
        padding: 20px;
    }

    .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    .table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .table th {
        background-color: #f2f2f2;
    }

    .buttonone {
        width: 160px;
        margin-left: 80%;
        background-color: #050231;
        color: white;
        border-radius: 4px;
        cursor: pointer;
        transition: all 0.3s ease 0s;
        border: none;
        padding: 10px 20px;
    }
</style>
<div class="report-container">
    <div class="report-header">
        Attendance Report
    </div>
    <div class="report-content">
        <table class="table">
            <thead>
            <tr>
                <th style="text-align: center;">S.N</th>
                <th style="text-align: center;">Matrix Number</th>
                <th style="text-align: center;">Name</th>
                <th style="text-align: center;">Status</th>
            </tr>
            </thead>
            <tbody>
                <%
    ArrayList<String> statusList = (ArrayList<String>) request.getAttribute("statusList");
    int no = 1; // Initialize the variable here.
    if (statusList != null && !statusList.isEmpty()) {
        for (String status : statusList) {
            String[] parts = status.split(":");
            String matrixNo = parts[0];
            String statusValue = parts[1].trim();
%>
            <tr>
                <td style="text-align: center;"><%= no++ %></td>
                <td style="text-align: center;"><%= matrixNo %></td>
                <td style="text-align: center;"> Student </td> <!-- You may fetch student name from the database -->

                <td style="text-align: center;"><%= statusValue %></td>
            </tr>
                <%
        }
    } else {
%>
            <tr>
                <td colspan="7" style="text-align: center;">No data found</td>
            </tr>
                <%
    }
%>
            <!-- Table and body closing tags go here -->
            </table>
    </div>
</div>
</body>
</html>