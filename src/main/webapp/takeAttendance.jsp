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
<!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">-->
  <link href="css/all.css" rel="stylesheet" type="text/css">
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.css" rel="stylesheet">
</head>
<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="text-align: center;">
  <div style="text-align: center;" class="container-fluid" id="next-con">
    <img src="assets/img/logo.png" alt="No logo" margin-left="50px" width="60px">
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
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="justify-content: end">
      <ul  class="navbar-nav ms-auto mb-2 mb-lg-0">
        <a class="button btn buttonone" href="index.html" style="text-decoration: none;  width: 80vh">Log out</a>
      </ul>
    </div>
  </div>
</nav>
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

            <form action= "Takeatten" method="post">
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


                    </head>

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
                          <option value="Sem 1">Semester 1</option>
                          <option value="Sem 2">Semester 2</option>
                          <option value="Sem 3">Semester 3</option>
                          <option value="Sem 4">Semester 4</option>
                          <option value="Sem 5">Semester 5</option>
                          <option value="Sem 6">Semester 6</option>
                          <option value="Sem 7">Semester 7</option>
                          <option value="Sem 8">Semester 8</option>
                        </select>
                      </li>
                      <li class="dropdown-container">
                        <label>Section: </label><br>
                        <select class="select-box" name="Section">
                          <option value="A">Section A</option>
                          <option value="B">Section B</option>
                          <option value="C">Section C</option>
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
                        <th style="text-align: center;">Name</th>
                        <th style="text-align: center;">Course</th>
                        <th style="text-align: center;">Section</th>
                        <th style="text-align: center;">Matrix Number</th>
                        <th style="text-align: center;">Semester</th>
                        <th style="text-align: center;">Attendance</th>
                        <th style="text-align: center;">Status</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td style="text-align: center;">---</td>
                        <td><input name='check[]' type='checkbox' class='form-control'>
                        </td>
                      </tr>
                      <button type="submit" class="buttonone">Submit</button><br>
                      <style>
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
                      <!-- <h6 class="m-0 font-weight-bold text-danger">Note: <i>Click on the checkboxes besides each
student to take attendance!</i></h6> -->
                      <!-- <div class='alert alert-danger' role='alert'> -->

                    </table>
                  </div>
                </div>
              </div>
            </form>

          </div>
        </div>
        <div class="row">
          <div class="col-lg-11 d-flex justify-content-right">
            <button type="submit" class="buttonone" style="margin-right: 20px;">Attendance</button>
            <button type="submit" class="buttonone ml-auto">All Present</button>
          </div>
        </div>
      </div>
    </div>

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

<!--    <script>-->
<!--      // Wrap the code in a DOMContentLoaded event listener-->
<!--      document.addEventListener('DOMContentLoaded', function () {-->
<!--        // Add an event listener to the form-->
<!--        document.getElementById('redirectForm').addEventListener('submit', function (event) {-->
<!--          // Prevent the default form submission-->
<!--          event.preventDefault();-->

<!--          // Redirect to the new.jsp page-->
<!--          window.location.href = 'new.jsp';-->
<!--        });-->
<!--      });-->
<!--    </script>-->

  </div></div></body>

</html>
