<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.finalfinalbackend.controller.Student" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
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
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <a class="button" href="index.html" style="text-decoration: none;">Log out</a>
            </ul>
        </div>
    </div>
</nav>
<!-- The rest of your HTML body content goes here -->
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
                                    <head>
                                        <!-- Include Select2 CSS and JavaScript -->
                                        <link
                                                href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/css/select2.min.css"
                                                rel="stylesheet">
                                        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                                        <script
                                                src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/js/select2.min.js"></script>

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
                                        </style>

                                        <%--                                            <script>--%>
                                        <%--                                                // Initialize Select2 for all select elements with class 'select-box'--%>
                                        <%--                                                $(document).ready(function () {--%>
                                        <%--                                                    $('.select-box').select2();--%>
                                        <%--                                                });--%>
                                        <%--                                            </script>--%>
                                        <%--                                        </head>--%>

                                    <body>
                                    <h6 class="text" style="color: #050231;">Select Your choice for
                                        Attendance</h6>
                                    <label class="text" style="text-align: center;"> Total Students :
                                    </label>
                                    <style>
                                        .text {
                                            margin-left: 40px;
                                            margin-bottom: 20px;
                                        }
                                    </style>
                                    <ul class="horizontal-menu">
                                        <li class="dropdown-container">
                                            <label>Course: </label><br>
                                            <select class="select-box" name="Course">
                                                <option value="BICT">BICT</option>
                                                <option value="MBA">MBA</option>
                                            </select>
                                        </li>
                                        <li class="dropdown-container">
                                            <label>Semester: </label><br>
                                            <select class="select-box" name="Semester">
                                                <option value="Semester 1">Semester 1</option>
                                                <option value="Semester 2">Semester 2</option>
                                                <option value="Semester 3">Semester 3</option>
                                                <option value="Semester 4">Semester 4</option>
                                                <option value="Semester 5">Semester 5</option>
                                                <option value="Semester 6">Semester 6</option>
                                                <option value="Semester 7">Semester 7</option>
                                                <option value="Semester 8">Semester 8</option>
                                            </select>
                                        </li>
                                        <li class="dropdown-container">
                                            <label>Section: </label><br>
                                            <select class="select-box" name="Section">
                                                <option value="Section A">Section A</option>
                                                <option value="Section B">Section B</option>
                                                <option value="Section C">Section C</option>
                                            </select>
                                        </li>
                                        <li class="dropdown-container">
                                            <label>Teacher Name: </label><br>
                                            <select class="select-box" name="Tname">
                                                <option value="Pratap Sapkota">Pratap Sapkota</option>
                                                <option value="Pawan Kharal">Pawan Kharal</option>
                                                <option value="Nuhendra Shakya">Nuhendra Shakya</option>
                                            </select>
                                        </li>
                                        <li class="dropdown-container">
                                            <label for="exampleInputFirstName">Select Date: </label>
                                            <input type="date" class="form-control" name="dateTaken"
                                                   id="exampleInputFirstName">
                                            <br><br><br>

                                        </li>
                                    </ul>
                                    </select>
                                    <style>
                                        .ok {
                                            margin-left: 20px;
                                        }
                                    </style>
                                    </li>
                                    </ul>
                                    </body>
                                    <table
                                            class="table align-items-center table-flush table-hover">
                                        <thead class="thead-light">
                                        <tr>
                                            <th style="text-align: center;">S.N</th>
                                            <th style="text-align: center;">Matrix Number</th>
                                            <th style="text-align: center;">Course</th>
                                            <th style="text-align: center;">Semester</th>
                                            <th style="text-align: center;">Sname</th>
                                            <th style="text-align: center;">Section</th>
                                            <th style="text-align: center;">Attendance</th>
                                            <th style="text-align: center;">Status</th>
                                        </tr>
                                        </thead>
                                        <form method="get" action="takeAttendanceServlet">
                                            <%
                                                ResultSet resultSet = (ResultSet) request.getAttribute("studentInfo");
//    int no=1; //declaring and initalizing the variable.
                                                while (resultSet.next()) {
                                                    String SN = resultSet.getString("SN");
                                                    String c1 = resultSet.getString("Matrixno");
                                                    String c2 = resultSet.getString("Course");
                                                    String c3 = resultSet.getString("Semester");
                                                    String c4 = resultSet.getString("Sname");
                                                    String c5 = resultSet.getString("Section");
                                                    String c6 = resultSet.getString("Tname");

                                            %>
                                            <tr>
                                                <td name="check" style="text-align: center;"><%=SN%></td>
                                                <td name="check" style="text-align: center;"><%=c1%></td>
                                                <td name="check" style="text-align: center;"><%=c2%></td>
                                                <td name="check" style="text-align: center;"><%=c3%></td>
                                                <td name="check" style="text-align: center;"><%=c4%></td>
                                                <td name="check" style="text-align: center;"><%=c5%></td>
                                                <td name="check" style="text-align: center;"><%=c6%></td>
                                                <td><input name='check_<%=c1%>' type='checkbox' class='form-control' onchange="updateStatus(this)"></td>
                                                <script>
                                                    function select() {
                                                        var checkboxes = document.getElementsByName('check_<%=c1%>');
                                                        var checkState = !checkboxes[0].checked;
                                                        for (var i = 0; i < checkboxes.length; i++) {
                                                            checkboxes[i].checked = checkState;
                                                        }
                                                    }
                                                function updateStatus(checkbox) {
                                                    var isChecked = checkbox.checked;
                                                    var statusParameter = isChecked ? 'present' : 'null';

                                                    // Make an AJAX request to the servlet
                                                    var xhr = new XMLHttpRequest();

                                                    xhr.open('GET', 'Sub?check=' + statusParameter, true);
                                                    xhr.onreadystatechange = function () {
                                                        if (xhr.readyState === 4 && xhr.status === 200) {
                                                            // Handle the response if needed
                                                            var responseText = xhr.responseText;
                                                            console.log(responseText);
                                                        }
                                                    };
                                                    xhr.send();
                                                }
                                            </script>
                                            </tr>
                                            <%
                                                }
                                            %>
                                            <button id="m" onclick="fetchDate()" type="submit">Take Attendance </button>
                                        </form>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <button onclick="select()" class="buttonone">All Present</button>
                        <style>
                            .buttonone {
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
                                top: 180px;
                                right: 200px;
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

                            .buttonone:hover {
                                background-color: #fcfc;
                                color: rgb(0, 0, 0);
                            }
                        </style>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-11 d-flex justify-content-right">
                        <%--                        <form action="Sub" method="get">--%>
                        <%--                        <button onclick="fetchDate()" class="buttonone ml-auto" style="margin-right: 2px;">Take Attendance</button>--%>
                        <%--                        </form>--%>

                        <%--                        </script>--%>
                    </div>

                </div>
            </div>
        </div>
        <br><br><br>
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/ruang-admin.min.js"></script>
        <!-- Page level plugins -->
        <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>
    </div>
</div>
</body>
</html>

