<!DOCTYPE html>
<html lang="en">
<head>
    <title>Our Services | Busolo Car Logistics</title>
    <meta charset="utf-8">
    <meta name="Description" content="">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all"/>
    <link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png">
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
                        <img style="" class="responsive" src="favicon/favicon-96x96.png" width="35px" height="30px" alt=""/>&nbsp;BUSOLO CAR LOGISTICS
                    </a>
                </h3>
            </div>
            <div class="nav_w3ls">
                <nav>
                    <label for="drop" class="toggle mt-lg-0 mt-2"><span class="fa fa-bars" aria-hidden="true"></span></label>
                    <input type="checkbox" id="drop"/>
                    <ul class="menu">
                        <li class="mr-lg-5 mr-0"><a href="index.php"><h6 style="color: black">HOME</h6></a></li>
                        <li class="mr-lg-5 mr-2 active"><a href="services.php"><h6 >OUR SERVICES</h6></a></li>
                        <li class="mr-lg-5 mr-2"><a href="contact.php""><h6 style="color: black">CONTACT US</h6></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- //header -->

<!-- //header -->

<!-- inner banner -->
<div class="inner-banner" id="home">
    <div class="container">
        <div class="row banner-tops-style">
            <div class="col-lg-9 style-banner">
            <h3 style="color: white" class="text-wh mb-4 text-center">Our Services</h3>
            </div>
        </div>
    </div>
</div>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">Our Services</li>
    </ol>
</div>
<!-- //page details -->
<section class="banner_bottom py-sm-5 py-4">
    <div class="container py-lg-3">
        <div class="row text-center" id="services">
            <div class="col-md-4 how-icon mt-md-0">
                <div class="shadow">
                    <h4 class="mt-3">Car Machinery and Imports</h4>
                    <p class="mt-3">Wondering what car to buy? And how to access car machinery?</p>
                    <p>We help individuals, car dealers and corporate clients import vehicles.From sourcing the car,shipping,clearance and registration. We do it all.</p>
                    <p>Why import with us?</p>
                    <p class="mt-3">We assist you through this process to avoid nuisance and stress associated with car importation, while you save and acquire quality cars and machinery fast.</p>
                </div>
            </div>
            <div class="col-md-4 how-icon2 mt-md-0 mt-4">
                <div class="shadow">
                    <h4 class="mt-3">High Quality Automotive Spares Imports</h4>
                    <p>We have strong vendor relationships with some of the most reputable suppliers of genuine parts both locally and overseas.This sort of trust ensures that only high quality and original parts are sold in our shops.</p>
                    <p class="mt-3">BLC stock a wide variety of items and car accessories including tires,batteries,brake pads,filters,spark plugs,clutch plates,air cleaners and much more.Also available in brand new reconditioned or in used condition.</p>
                </div>
            </div>
            <div class="col-md-4 how-icon1 mt-md-0 mt-4">
                <div class="shadow">
                    <h4 class="mt-3">Car Leasing</h4>
                    <p class="mt-3">With BLC, leasing a car couldn't be easier.</p>
                    <p class="mt-3">Find affordable leasing deals for your personal use and business, short term and long term.</p>
                    <p class="mt-3">We also have experienced chauffeurs to suit your executive requirements. This is subject to terms and conditions.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--function for accordion for both students and organizations-->
<script>
    function accordionFunction(id) {
        const x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="validation/js/jquery.validationEngine.js"></script>
<script src="validation/js/languages/jquery.ValidationEngine.en.js"></script>
<script src="validation/jquery.form.js"></script>
<script src="validation/js/common.js"></script>
<script src="validation/js/register.js"></script>
<script src="validation/js/login.js"></script>
</body>
</html>
