<% String c2 = null; %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.finalfinalbackend.controller.Student" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/attnlg.jpg" rel="icon">
    <title>Dashboard</title>
    <link href="css/all.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.css" rel="stylesheet">
    <%--    <link href="css/style.css" rel="stylesheet">--%>
    <!-- You can include your script tag here if needed -->
</head>
<body id="page-top">
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="text-align: center;">
    <div style="text-align: center;" class="container-fluid" id="next-con">
        <img src="assets/img/logo.png" alt="No logo" style="margin-left: 50px; width: 60px;">
        <div class="content">
            <div class="attendance">
                Attendance
            </div>
            <div class="management-system">
                Management System
            </div>
        </div>
        <style>
            /* Define styles for the "Attendance" text */
            .attendance {
                font-size: 32px;
                font-weight: 550;
                text-align: left;
                margin-left: 30px;
                font-family: Inclusive Sans;
                /* font-family: Inclusive Sans; */
            }

            /* Define styles for the "Management System" text */
            .management-system {
                font-size: 18px;
                font-weight: normal;
                color: rgb(128, 5, 5);
                margin-left: 30px;
                font-family: Inclusive Sans;
            }
        </style>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <a class="buttonone" href="index.html" style="text-decoration: none; ">Log out</a>
        </div>
    </div>
</nav>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/attnlg.jpg" rel="icon">
    <title>Dashboard</title>
    <link href="css/all.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.css" rel="stylesheet">
    <!-- Include Select2 CSS and JavaScript -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/css/select2.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/js/select2.min.js"></script>

    <style>
        /* Style for horizontal menu */
        .horizontal-menu {
            display: flex;
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        /* Style for each dropdown container */
        .dropdown-container {
            margin-left: 40px;
            /* Adjust to control the spacing between dropdowns */
        }

        /* Style for select boxes */
        select {
            width: 125px;
        }

        .text {
            margin-left: 40px;
            margin-bottom: 20px;
        }

        .ok {
            margin-left: 20px;
        }
        #m {
            width: 160px;
            margin-left: 10%;
            background-color: #050231;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
            border: none;
            padding: 10px 20px;
            position: absolute;
            bottom: -55px;
            right: 300px;
        }
        #m:hover {
            background-color: #fcfc;
            color: rgb(0, 0, 0);
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

        .buttonone:hover {
            background-color: #fcfc;
            color: rgb(0, 0, 0);
        }
    </style>
</head>

<div id="wrapper">
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800"></h1>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card mb-4">
                                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary"></h6>
                                        </div>
<%--                                        <label class="text" style="text-align: center;"> Total Students :</label>--%>
                                        <h3 style=" margin-left: 75px">Attendance Table generated </h3>
                                        <h6 class="text" style="color:red; margin-bottom: 20px; text-align:right; margin-right:30px;">NOTE : Select Date before taking an Attendance.</h6>
                                        <table class="table align-items-center table-flush table-hover">
                                            <thead class="thead-light">
                                            <tr>
                                                <th style="text-align: center;">S.N</th>
                                                <th style="text-align: center;">Matrix Number</th>
                                                <th style="text-align: center;">Course</th>
                                                <th style="text-align: center;">Semester</th>
                                                <th style="text-align: center;">Name</th>
                                                <th style="text-align: center;">Section</th>
                                                <th style="text-align: center;">Teachername</th>
                                                <th style="text-align: center;">Status</th>
                                            </tr>
                                            </thead>
                                            <form method="get" action="Sub">
                                                <ul class="dropdown-container">
                                                    <label>Select Date: </label>
                                                    <input type="date" class="form-control select-box" name="dateTaken" id="exampleInputFirstName">
                                                    <br><br>
                                                    <style>
                                                    .dropdown-container input[type="date"] {
                                                    width: 300px; /* Adjust the width to your preference */
                                                    }
                                                    </style>
                                                </ul>
                                                  <%!
                                                      int no = 1;
                                                  %>
                                                <%
                                                    ResultSet resultSet = (ResultSet) request.getAttribute("studentInfo");
                                                    while (resultSet.next()) {
                                                        String c1 = resultSet.getString("Matrixno");
                                                        c2 = resultSet.getString("Course");
                                                        String c3 = resultSet.getString("Semester");
                                                        String c4 = resultSet.getString("Sname");
                                                        String c5 = resultSet.getString("Section");
                                                        String c6 = resultSet.getString("Tname");
                                                %>
                                                <tr>
                                                    <td style="text-align: center;"> <%=no++%></td>
                                                    <td style="text-align: center;"> <%=c1%></td>
                                                    <td style="text-align: center;"> <%=c2%></td>
                                                    <td style="text-align: center;"> <%=c3%></td>
                                                    <td style="text-align: center;"> <%=c4%></td>
                                                    <td style="text-align: center;"> <%=c5%></td>
                                                    <td style="text-align: center;"> <%=c6%></td>
                                                    <td><input name='check_<%=c1%>' type='checkbox' class='form-control' onchange="updateStatus(this)"></td>
                                                </tr>
                                                <%
                                                    }
                                                %>

                                                <button id="m" onclick="fetchDate(); takeAttendance();" type="submit">Take Attendance</button>
                                                <div id="toastElement"></div>
                                            </form>
                                        </table>
                                        <br>
                                    </div>
                                    <div class="king">


                                    </div>
                                </div>

                            </div>

                        <button onclick="selectAll()" type="submit">All Present</button>
                        <script>
                            function fetchDate() {
                                // Get the selected date
                                var selectedDate = document.getElementById('exampleInputFirstName').value;
                                // Make an AJAX request to the servlet
                                var xhr = new XMLHttpRequest();
                                xhr.open('GET', 'Sub?dateTaken=' + selectedDate, true);
                                xhr.onreadystatechange = function () {
                                    if (xhr.readyState === 4 && xhr.status === 200) {
                                        // Handle the response if needed
                                        var responseText = xhr.responseText;
                                        console.log(responseText);
                                        // Update your page with the response data
                                        document.getElementById('result').innerHTML = responseText;
                                    }
                                };
                                xhr.send();
                            }

                            function showToast(message) {
                                // Create a new instance of Syncfusion Toast component
                                var toast = new ej.notifications.Toast({
                                    position: { X: "Right" } // Set toast position
                                });
                                // Set the toast message
                                toast.content = message;
                                // Show the toast
                                toast.appendTo('#toastElement');
                            }

                            function takeAttendance() {
                                showToast('Attendance taken successfully!');
                            }

                            // Function to select all present (added for demonstration)
                            function selectAll() {
                                // Your logic to select all present goes here
                                showToast('All present selected.');
                            }
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="js/ruang-admin.min.js"></script>
<!-- Page level plugins -->
</div></body>
</html>































