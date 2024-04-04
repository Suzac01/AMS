<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<%@ page import="java.sql.ResultSet" %>--%>
<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <meta name="description" content="">--%>
<%--    <meta name="author" content="">--%>
<%--    &lt;%&ndash;    <link href="img/logo/attnlg.jpg" rel="icon">&ndash;%&gt;--%>
<%--    <title>Dashboard</title>--%>
<%--    <link href="css/all.css" rel="stylesheet" type="text/css">--%>
<%--    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">--%>
<%--    <link href="css/ruang-admin.css" rel="stylesheet">--%>

<%--    <link--%>
<%--            href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/css/select2.min.css"--%>
<%--            rel="stylesheet">--%>
<%--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--    <script--%>
<%--            src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/js/select2.min.js"></script>--%>

<%--    &lt;%&ndash;    <link href="css/style.css" rel="stylesheet">&ndash;%&gt;--%>
<%--    <!-- You can include your script tag here if needed -->--%>
<%--</head>--%>
<%--<style>--%>
<%--    /* Style for horizontal menu */--%>
<%--    .horizontal-menu {--%>
<%--        display: flex;--%>
<%--        list-style-type: none;--%>
<%--        margin: 0;--%>
<%--        padding: 0;--%>
<%--    }--%>

<%--    /* Style for each dropdown container */--%>
<%--    .dropdown-container {--%>
<%--        margin-left: 40px;--%>
<%--        /* Adjust to control the spacing between dropdowns */--%>
<%--    }--%>

<%--    /* Style for select boxes */--%>
<%--    select {--%>
<%--        width: 125px;--%>
<%--    }--%>

<%--    .buttonone {--%>
<%--        width: 160px;--%>
<%--        margin-left: 10%;--%>
<%--        background-color: #050231;--%>
<%--        color: white;--%>
<%--        border-radius: 4px;--%>
<%--        cursor: pointer;--%>
<%--        transition: all 0.3s ease 0s;--%>
<%--        border: none;--%>
<%--        padding: 10px 20px;--%>
<%--        position: absolute;--%>
<%--        top: 180px;--%>
<%--        right: 200px;--%>
<%--    }--%>

<%--    #m {--%>
<%--        width: 160px;--%>
<%--        margin-left: 10%;--%>
<%--        background-color: #050231;--%>
<%--        color: white;--%>
<%--        border-radius: 4px;--%>
<%--        cursor: pointer;--%>
<%--        transition: all 0.3s ease 0s;--%>
<%--        border: none;--%>
<%--        padding: 10px 20px;--%>
<%--        position: absolute;--%>
<%--        bottom: -55px;--%>
<%--        right: 300px;--%>
<%--    }--%>

<%--    #m:hover {--%>
<%--        background-color: #fcfc;--%>
<%--        color: rgb(0, 0, 0);--%>
<%--    }--%>

<%--    .buttonone:hover {--%>
<%--        background-color: #fcfc;--%>
<%--        color: rgb(0, 0, 0);--%>

<%--    }--%>

<%--    .text {--%>
<%--        margin-left: 40px;--%>
<%--        margin-bottom: 20px;--%>
<%--    }--%>

<%--    /* Define styles for the "Attendance" text */--%>
<%--    .attendance {--%>
<%--        font-size: 32px;--%>
<%--        font-weight: 550;--%>
<%--        text-align: left;--%>
<%--        margin-left: 30px;--%>
<%--        font-family: Inclusive Sans, serif;--%>
<%--        /* font-family: Inclusive Sans; */--%>
<%--    }--%>

<%--    /* Define styles for the "Management System" text */--%>
<%--    .management-system {--%>
<%--        font-size: 18px;--%>
<%--        font-weight: normal;--%>
<%--        color: rgb(128, 5, 5);--%>
<%--        margin-left: 30px;--%>
<%--        font-family: Inclusive Sans, serif;--%>
<%--    }--%>
<%--</style>--%>
<%--<body id="page-top">--%>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-light" style="text-align: center;">--%>
<%--    <div style="text-align: center;" class="container-fluid" id="next-con">--%>
<%--        <img src="assets/img/logo.png" alt="No logo" style="margin-left: 50px; width: 60px;">--%>
<%--        <div class="content">--%>
<%--            <div class="attendance">--%>
<%--                Attendance--%>
<%--            </div>--%>
<%--            <div class="management-system">--%>
<%--                Management System--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">--%>
<%--                <button class="btn btn-primary text-right" style="text-decoration: none;">--%>
<%--                    <a href="index.html" style="color: white; text-decoration: none;">Log out</a>--%>
<%--                </button>--%>


<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<!-- The rest of your HTML body content goes here -->--%>
<%--<div id="wrapper">--%>
<%--    <!-- Sidebar -->--%>
<%--    <div id="content-wrapper" class="d-flex flex-column">--%>
<%--        <div id="content">--%>
<%--            <div class="container-fluid" id="container-wrapper">--%>
<%--                <div class="d-sm-flex align-items-center justify-content-between mb-4">--%>
<%--                    <h1 class="h3 mb-0 text-gray-800"></h1>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-12">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-lg-12">--%>
<%--                                <div class="card mb-4">--%>
<%--                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
<%--                                        <h6 class="m-0 font-weight-bold text-primary"></h6>--%>
<%--                                    </div>--%>

<%--                                    <!-- Include Select2 CSS and JavaScript -->--%>


<%--                                    <h6 class="text" style="color: #050231;">Select Your choice for--%>
<%--                                        Attendance</h6>--%>
<%--                                    <label class="text" style="text-align: center;"> Total Students :--%>
<%--                                    </label>--%>

<%--                                    <ul class="horizontal-menu">--%>
<%--                                        <li class="dropdown-container">--%>
<%--                                            <label>Course: </label><br>--%>
<%--                                            <label>--%>
<%--                                                <select class="select-box" name="Course">--%>
<%--                                                    <option value="BICT">BICT</option>--%>
<%--                                                    <option value="MBA">MBA</option>--%>
<%--                                                </select>--%>
<%--                                            </label>--%>
<%--                                        </li>--%>
<%--                                        <li class="dropdown-container">--%>
<%--                                            <label>Semester: </label><br>--%>
<%--                                            <label>--%>
<%--                                                <select class="select-box" name="Semester">--%>
<%--                                                    <option value="Semester 1">Semester 1</option>--%>
<%--                                                    <option value="Semester 2">Semester 2</option>--%>
<%--                                                    <option value="Semester 3">Semester 3</option>--%>
<%--                                                    <option value="Semester 4">Semester 4</option>--%>
<%--                                                    <option value="Semester 5">Semester 5</option>--%>
<%--                                                    <option value="Semester 6">Semester 6</option>--%>
<%--                                                    <option value="Semester 7">Semester 7</option>--%>
<%--                                                    <option value="Semester 8">Semester 8</option>--%>
<%--                                                </select>--%>
<%--                                            </label>--%>
<%--                                        </li>--%>
<%--                                        <li class="dropdown-container">--%>
<%--                                            <label>Section: </label><br>--%>
<%--                                            <label>--%>
<%--                                                <select class="select-box" name="Section">--%>
<%--                                                    <option value="Section A">Section A</option>--%>
<%--                                                    <option value="Section B">Section B</option>--%>
<%--                                                    <option value="Section C">Section C</option>--%>
<%--                                                </select>--%>
<%--                                            </label>--%>
<%--                                        </li>--%>
<%--                                        <li class="dropdown-container">--%>
<%--                                            <label>Teacher Name: </label><br>--%>
<%--                                            <label>--%>
<%--                                                <select class="select-box" name="Tname">--%>
<%--                                                    <option value="Pratap Sapkota">Pratap Sapkota</option>--%>
<%--                                                    <option value="Pawan Kharal">Pawan Kharal</option>--%>
<%--                                                    <option value="Nuhendra Shakya">Nuhendra Shakya</option>--%>
<%--                                                </select>--%>
<%--                                            </label>--%>
<%--                                        </li>--%>

<%--                                    </ul>--%>
<%--                                    <form method="get" action="Sub">--%>
<%--                                        <li class="dropdown-container">--%>
<%--                                            <label for="exampleInputFirstName">Select Date: </label>--%>
<%--                                            <input type="date" class="form-control" name="dateTaken"--%>
<%--                                                   id="exampleInputFirstName">--%>
<%--                                            <br><br><br>--%>
<%--                                        </li>--%>
<%--                                    <%--%>
<%--                                        ResultSet resultSet = (ResultSet) request.getAttribute("studentInfo");--%>

<%--                                             while (resultSet.next()) {--%>
<%--                                                  String SN = resultSet.getString("SN");--%>
<%--                                                  String c1 = resultSet.getString("Matrixno");--%>
<%--                                                  String c2 = resultSet.getString("Course");--%>
<%--                                                  String c3 = resultSet.getString("Semester");--%>
<%--                                                  String c4 = resultSet.getString("Sname");--%>
<%--                                                  String c5 = resultSet.getString("Section");--%>
<%--                                                  String c6 = resultSet.getString("Tname");--%>
<%--                                          %>--%>
<%--                                    <table class="table align-items-center table-flush table-hover">--%>
<%--                                        <thead class="thead-light">--%>
<%--                                        <tr>--%>
<%--                                            <th style="text-align: center;">SN</th>--%>
<%--                                            <th style="text-align: center;">Matrix Number</th>--%>
<%--                                            <th style="text-align: center;">Course</th>--%>
<%--                                            <th style="text-align: center;">Semester</th>--%>
<%--                                            <th style="text-align: center;">Sname</th>--%>
<%--                                            <th style="text-align: center;">Section</th>--%>
<%--                                            <th style="text-align: center;">Attendance</th>--%>
<%--                                            <th style="text-align: center;">Status</th>--%>
<%--                                        </tr>--%>
<%--                                        </thead>--%>


<%--                                        <tr>--%>
<%--                                            <td name="check" style="text-align: center;"><%=SN%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c1%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c2%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c3%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c4%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c5%></td>--%>
<%--                                            <td name="check" style="text-align: center;"><%= c6%></td>--%>
<%--                                            <td>--%>

<%--                                                    <!-- Add the necessary form fields for attendance -->--%>
<%--                                                    <input type="hidden" name="studentSN" value="----">--%>
<%--                                                <label>--%>
<%--                                                    <input type="checkbox" name="attendance" class="form-control">--%>
<%--                                                </label>--%>
<%--                                                <button id="m" type="submit">Take Attendance</button>--%>
<%--                                    </table></form>--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <button onclick="select()" class="buttonone">All Present</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-11 d-flex justify-content-right">--%>
<%--                        <script>--%>
<%--                            function fetchDate() {--%>
<%--                                // Get the selected date--%>
<%--                                var selectedDate = document.getElementById('exampleInputFirstName').value;--%>

<%--                                // Make an AJAX request to the servlet--%>
<%--                                const xhr = new XMLHttpRequest();--%>
<%--                                xhr.open('GET', 'Sub?dateTaken=' + selectedDate, true);--%>
<%--                                xhr.onreadystatechange = function () {--%>
<%--                                    if (xhr.readyState === 4 && xhr.status === 200) {--%>
<%--                                        // Handle the response if needed--%>
<%--                                        var responseText = xhr.responseText;--%>
<%--                                        console.log(responseText);--%>
<%--                                        // Update your page with the response data--%>
<%--                                        document.getElementById('result').innerHTML = responseText;--%>
<%--                                    }--%>
<%--                                };--%>
<%--                                xhr.send();--%>
<%--                            }--%>
<%--                        </script>--%>

<%--                    </div>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br><br><br>--%>
<%--        <a class="scroll-to-top rounded" href="#page-top">--%>
<%--            <i class="fas fa-angle-up"></i>--%>
<%--        </a>--%>

<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%--<%--%>
<%--    }--%>
<%--%>--%>