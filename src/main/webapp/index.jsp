<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Landing page</title>
    <!-- Link to your external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/land.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Link to Bootstrap CSS -->
</head>
<section class="about">
    <div class="main">
        <div class="about-text">
            <h1><span>
                        <h3>About</h3>
                    </span>Our System</h1>
            <p>Welcome to our website! We are dedicated to providing top-notch
                products and services to meet all your needs. Whether you're looking
                for innovative solutions, quality craftsmanship, or expert advice,
                you've come to the right place. Explore our website to discover
                a world of possibilities, and feel free to reach out to us for
                any inquiries or assistance. Your satisfaction is our priority,
                and we look forward to serving you.</p>
            </p>
            <a href="Signup.jsp" class="button-btn">GET STARTED</a>
        </div>
        <img style="width: 50%; height: 50%; " class="mine" src="assets/img/Landpic.png">
    </div></section>
</div>
</div>
<head>
    <style>
        .horizontal-line {
            border-bottom: 1px solid rgba(255, 255, 255, 0.5);
            /* Adjust the color and transparency as needed */
        }

        /* CSS for the footer */
        footer {
            background-color: #050231;
            color: white;
            text-align: center;
            padding: 60px;
        }
    </style>
</head>
<body>

<footer> <!-- Your webpage content here -->
    <div class="horizontal-line"></div>
    <div style="background-color: #050231; color: white; padding: 20px;">
        <div style="max-width: 1500px; margin: 0 auto; text-align: center;">
            <div>
                <h3>SOFTR Technology Company</h3>
                <p>You say we build it.</p>
                <br><br>
            </div>
            <div style="display: flex; justify-content: center; margin-top: 20px;">
                <div style="margin-right: 90px;">
                    <style>
                        body {
                            font-family: Arial, sans-serif;
                        }

                        h4 {
                            color: white; /* Change the color of sthe h4 element */
                        }

                        p a {
                            color: white; /* Change the color of the hyperlink within the paragraph */
                            text-decoration: none; /* Remove underline from the hyperlink */
                        }

                        p a:hover {
                            text-decoration: underline; /* Add underline on hover */
                        }
                    </style>
                    </head>
                    <body>
                    <h4>Login</h4>
                    <br>
                    <p><a href="Login.html">Login in to your account here</a>.</p>
                    </body>
                </div>
                <div style="margin-right: 90px;">
                    <h4>Sign Up</h4><br>
                    <p><a href="Signup.jsp">Create an account here</a>.</p>
                </div>
                <div style="margin-right: 90px;">
                    <h4>Why Choose Us</h4><br>
                    <p>Discover the benefits</p>
                </div>
                <div style="margin-right: 90px;">
                    <h4>Help & Documentation</h4><br>
                    <p>Get assistance and resources</p>
                </div>
                <div>
                    <h4>Fast Assets</h4><br>
                    <p>Efficiently manage your assets</p>
                </div>
            </div>
        </div>
        <p><br><br><br><br><br><br><br><br>&copy; 2023 Softr Company Ptd. Ltd All rights reserved.</p>
    </div></footer>
</body>
</html>

<!-- Main Content Section -->
<!-- <script>
    var i = 0;
    var result=0;
    do{
        i=i+1;
        result = result+i;
        console.log(result);
    }while(i<5);
    console.log(result);


    <h1 id ="if" > if conditions </h1>
    var ifid=document.getElementById('if').innerHTML;
    console.log(ifid)
    if(ifid=="if Conditions"){
        console.log('it is the if condition')
    } else{
        console.log('it is else part');
    }
    function myfunction(){
        console.log("argments is calling");
    }

    function myfunction1(a,b){
        console.log("argument function has been called " + (a+b));
    }

    for(i=0;i<=50;i++){
        myfunction1(20,30+i);
    }