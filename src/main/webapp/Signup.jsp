<!DOCTYPE html>
<html lang="en" xmlns:jsp="http://java.sun.com/JSP/Page">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign up</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="./assets/img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inclusive+Sans&family=Montserrat:wght@300&display=swap"
        rel="stylesheet">
    <!-- Link to your external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%@ include file="/includes/navLog.jsp"%>
<!--    &lt;!&ndash;opening tag for Navigation Bar &ndash;&gt;-->
<!--    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="text-align: center;">-->
<!--        <div style="text-align: center;" class="container" id="next-con">-->
<!--            <img src="assets/img/logo.png" alt="No logo" width="60px">-->
<!--            <div class="content">-->
<!--                <div class="attendance">-->
<!--                    Attendance-->
<!--                </div>-->
<!--                <div class="management-system">-->
<!--                    Management System-->
<!--                </div>-->
<!--            </div>-->
<!--            <style>-->
<!--                /* Define styles for the "Attendance" text */-->
<!--                .attendance {-->
<!--                    font-size: 32px;-->
<!--                    font-weight: 550;-->
<!--                    text-align: left;-->
<!--                    /* font-family: Inclusive Sans; */-->
<!--                }-->
<!--                /* Define styles for the "Management System" text */-->
<!--                .management-system {-->
<!--                    font-size: 18px;-->
<!--                    font-weight: normal;-->
<!--                    color: rgb(36, 36, 36);-->
<!--                }-->
<!--            </style>-->
<!--            <div class="collapse navbar-collapse" id="navbarSupportedContent">-->
<!--                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">-->
<!--                    <a href="Login.html"><button type="submit" style="margin-left:20px;" class="button">Login </button></a>-->
<!--&lt;!&ndash;                    <a class="button" style="text-decoration: none;">Login </a>&ndash;&gt;-->
<!--                </ul>-->
<!--            </div>-->
<!--        </div>-->
<!--    </nav>-->
    <section class="about">
        <div class="main">
            <div class="about-text">
                <div class="container">
                    <div style="align-items: center;" class="row">
                        <div class="col-lg-12">
                        </div>
                        <div style="text-align:center;  background-color: #050231">
                            <div class="shadow-box">
                                <style>
                                    .shadow-box {
                                        border-radius: 10px;
                                        background-color: #050231;
                                        box-shadow: 1px 1px 30px rgba(100, 100, 255, 0.7);
                                        /* horizontal offset, vertical offset, blur radius, color */
                                    }
                                </style><br>
                                <form action="Signup" method="POST" onsubmit="validateForm()">
                                    <img src="assets/img/bn.png" alt="IDK" style="border-radius: 60px; width: 100px;"><br>
                                    <h2 style="color: whitesmoke"> Signup </h2><br>
                                    <div style="width: 60%; margin: auto;">
                                        <input type="email" placeholder="Enter email" id="email" name="name" class="form-control" required>
                                    </div><br>
                                    <div style="width: 60%; margin: auto;">
                                        <input type="text" id="course" placeholder="Course" name="course" class="form-control" required>
                                    </div><br>
                                    <div style="width: 60%; margin: auto;">
                                        <input type="text" placeholder="Semester" id="semester" name="semester" class="form-control" required>
                                        <br>
                                        <div style="position: relative;">
                                            <input type="password" oninput="validatePassword()" placeholder="Create password" id="password" name="password" class="form-control" required>
                                            <span onclick="togglePasswordVisibility()" style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); cursor: pointer;">
                                                <i id="eyeIcon" class="fa fa-eye" aria-hidden="true"></i>
                                        </span>
                                        </div>
                                        <br>
                                        <!-- Add an element to display the password validation message -->
                                        <div id="passwordMessage" style="color: white;"></div> <!-- Apply CSS to make inner text white -->
                                        <br>
                                        <button onclick="validate()" type="submit" class="btn btn-primary">Sign up</button><br><br>
                                    </div>
                                </form>
                                <script>
                                    function validatePassword() {
                                        var password = document.getElementById('password').value;
                                        var messageElement = document.getElementById('passwordMessage');

                                        if (password.trim() === '') {
                                            messageElement.innerText = ''; // Clear the message if password is empty
                                            return;
                                        }

                                        var strongPasswordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@$!%*?&])[A-Za-z0-9@$!%*?&]{8,}$/;
                                        if (!strongPasswordRegex.test(password) || password.length <= 8) {
                                            messageElement.innerText = 'Password should include at least one lowercase letter, one uppercase letter, and one special character.';
                                        } else {
                                            messageElement.innerText = ''; // Clear inner HTML when password is valid
                                        }
                                    }
                                    function validateForm() {
                                        var password = document.getElementById('password').value;
                                        var strongPasswordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@$!%*?&])[A-Za-z0-9@$!%*?&]{8,}$/;
                                        if (!strongPasswordRegex.test(password) || password.length < 8) {
                                            alert("Password should include at least one lowercase letter, one uppercase letter, one number, and one special character, and be at least 8 characters long.");
                                            return false; // Prevent form submission
                                        }
                                        return true; // Allow form submission
                                    }

                                    function togglePasswordVisibility() {
                                        var passwordField = document.getElementById("password");
                                        var eyeIcon = document.getElementById("eyeIcon");

                                        if (passwordField.type === "password") {
                                            passwordField.type = "text";
                                            eyeIcon.classList.remove("fa-eye");
                                            eyeIcon.classList.add("fa-eye-slash");
                                        } else {
                                            passwordField.type = "password";
                                            eyeIcon.classList.remove("fa-eye-slash");
                                            eyeIcon.classList.add("fa-eye");
                                        }
                                    }
                                </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></section>
    </div>

    <!-- Bootstrap JS Script-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>