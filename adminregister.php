<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Registration | Busolo Car Logistics</title>
    <meta charset="utf-8">
    <meta name="Description" content="">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all"/>
    <link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png">
    <link rel="manifest" href="favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2 user-scalable=no">
</head>

<body>
<!-- header -->
<header style="background-color: white;height: 80px;margin-top: -10px">
    <div class="container">
        <div class="header d-lg-flex justify-content-between align-items-center">
            <div class="header-agile">
                <h3>
                    <a style="color: black" class="navbar-brand logo mt-2" href="index.php" title="Busolo Car Logistics">
                        <img style="" class="responsive" src="" width="30px" height="30px" alt=""/>&nbsp;BUSOLO CAR LOGISTICS
                    </a>
                </h3>
            </div>
            <div class="nav_w3ls">
                <nav>
                    <label for="drop" class="toggle mt-lg-0 mt-2"><span class="fa fa-bars" aria-hidden="true"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu">
                        <li class="mr-lg-3 mr-2 active"><a href="index.php"><h6>HOME</h6></a></li>
                        <!--                        <li class="mr-lg-3 mr-2" ><a href="about.php"><h6 style="color: black">ABOUT</h6></a></li>-->
                        <li class="mr-lg-3 mr-2"><a href="services.php"><h6 style="color: black">OUR SERVICES</h6></a></li>
                        <li class="mr-lg-3 mr-2"><a href="contact.php""><h6 style="color: black">CONTACT US</h6></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- //header -->

<!-- inner banner -->
<div class="inner-banner" id="home">
    <div class="container">
    </div>
</div>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">Administrator</li>
    </ol>
</div>
<!-- //page details -->

<!-- gallery -->

<section style="margin-left:8px;margin-right: 8px;" class="banner_bottom" id="">
    <div class="container py-lg-3">
            <div class="col-lg-12 mt-lg-0">
                <!-- register form grid -->
                    <h3 class="col-lg-10 mb-3 text-center">Admin Register</h3>
                    <form id="adminregister-frm" action="validation/register-process.php" method="post" class="register-wthree">
                        <div class="form-group">
                            <div class="mt-3">
                                <div class="col-md-10">
                                    <input class="form-control" id="email" type="email" placeholder="Enter Email" name="email" required="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="mt-3">
                                <div class="col-md-10">
                                    <input class="form-control" id="password" type="password" placeholder="Enter Password" name="pass" required="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="mt-3 mb-3">
                                <div class="col-md-10">
                                    <button name="register" class="btn btn-aasana-w3 btn-block w-100 text-uppercase">Register</button>
                                </div>
                            </div>
                        </div>
                        <!--display the response returned after form submit-->
                        <div class="col-md-10 status"></div>

                    </form>
                    <!--  //register form grid ends here -->
                </div>
            </div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="validation/js/jquery.validationEngine.js"></script>
<script src="validation/js/languages/jquery.ValidationEngine.en.js"></script>
<script src="validation/jquery.form.js"></script>
<script src="validation/js/common.js"></script>
<script src="validation/js/register.js"></script>

</body>
</html>
