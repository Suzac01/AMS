<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="assets/img/logo.png" rel="icon">
    <title>Dashboard</title>
<%--    <link rel="stylesheet" type="text/css" href="css/style.css">--%>
<%--    <link href="css/all.css" rel="stylesheet" type="text/css">--%>


    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.css" rel="stylesheet" type="text/css">

    <%@ include file="/includes/navOut.jsp"%>
</head>
<style>
    body {
        margin: 0;
        padding: 0;

    }
    .sidebar {
        width: 250px;
        height: 100%;
        background-color: #ffffff;
        color: #000000;
        padding-top: 20px;
        position: fixed;
    }

    .logo {
        text-align: center;
        margin-bottom: 20px;
    }

    .logo i {
        font-size: 20px;
    }

    .menu {
        list-style-type: none;
        padding: 0;
        margin-left: 55px;
    }

    .menu li {
        padding: 10px;
    }

    .menu a {
        color: #000000;
        text-decoration: none;
        display: block;
    }

    .menu i {
        margin-right: 10px;
    }

    .tab {
        padding: 10px 20px;
        display: inline-block;
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    /* Define the hover effect */
    .tab a:hover {
        text-decoration: none;
        color: #140083;
    }
</style>
<body>
<%--        <style>--%>
<%--            .attendance {--%>
<%--                font-size: 32px;--%>
<%--                font-weight: 550;--%>
<%--                font-family: Inclusive sans;--%>
<%--                text-align: left;--%>
<%--                margin-left: 20px;--%>
<%--            }--%>
<%--            .management-system {--%>
<%--                font-size: 18px;--%>
<%--                font-weight: normal;--%>
<%--                color: rgb(36, 36, 36);--%>
<%--                font-family: Inclusive sans;--%>
<%--                margin-left: 20px;--%>
<%--            }--%>
<%--        </style>--%>
<div class="container-full">
    <div class="row">

        <div class="sidebar">
            <div class="logo">
                <i class="fas fa-chart-bar"></i>
                <span>Menu</span>
            </div>
            <ul class="menu">
                <!--                    <li><a href="#"><i class="fas fa-user"></i> Profile</a></li>-->
                <!--                    <li><a href="#"><i class="fas fa-cog"></i> Settings</a></li>-->
            </ul>
        </div>


        <div class="col-lg-2"></div>
        <div class="col-xl-2 col-md-6 mb-4"><br><br>
            <div class="card h-100">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="tab">
                                <div class="text-xs font-weight-bold text-uppercase mb-2">
                                    <a href="takeAttendance.jsp">
                                        <i class="fas fa-calendar-check"></i> Take Attendance</a>
                                </div>

                                <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                        <span>Since last month</span> -->
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-2x text-info"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-2 col-md-6 mb-4"><br><br>
            <div class="card h-100">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class=" tab col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1"><a
                                    href="Chooseatten.html">Reports</a></div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                            </div>
                            <div class="mt-2 mb-0 text-muted text-xs">
                                <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                        <span>Since last month</span> -->
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-chalkboard fa-2x text-primary"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Earnings (Annual) Card Example -->
        <div class="col-xl-2 col-md-2  mb-4"><br><br>
            <div class="card h-100">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="tab col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1"><a href="#">Nothing</a></div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">

                            </div>
                            <div class="mt-2 mb-0 text-muted text-xs">
                                <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                        <span>Since last years</span> -->
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-code-branch fa-2x text-success"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pending Requests Card Example -->
    </div>
</div>
</div>


<!-- New User Card Example -->



<!--Row-->

<!-- <div class="row">
            <div class="col-lg-12 text-center">
              <p>Do you like this template ? you can download from <a href="https://github.com/indrijunanda/RuangAdmin"
                  class="btn btn-primary btn-sm" target="_blank"><i class="fab fa-fw fa-github"></i>&nbsp;GitHub</a></p>
            </div>
          </div> -->

<%--</div>--%>
<!---Container Fluid-->
<%--</div>--%>
<!-- Footer -->

<!-- Footer -->
<%--</div>--%>
<%--</div>--%>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/ruang-admin.min.js"></script>
<script src="../vendor/chart.js/Chart.min.js"></script>
<script src="js/demo/chart-area-demo.js"></script>
</body>

</html>