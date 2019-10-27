<?php
//dd($_POST);
require_once ("controller/adminsession.php");
require_once("controller/class.user.php");
$user = new USER();

$id = $_SESSION['admin_session'];

$stmt = $user->runQuery("SELECT * FROM admin WHERE id=:id");
$stmt->execute(array(":id"=>$id));
$userRow=$stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $user->runQuery("SELECT *  FROM inquire");
$stmt->execute();
$inqRow=$stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin | Busolo Car Logistics</title>
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

<body style="background-color: grey">
<!-- header -->
<header style="background-color: white;height: 80px;margin-top: -10px">
    <div class="container">
        <div class="header d-lg-flex justify-content-between align-items-center">
            <div class="header-agile">
                <h3>
                    <a style="color: black" class="navbar-brand logo mt-2" href="index.php" title="Busolo Car Logistics">
                        <img style="" class="responsive" src="" width="30px" height="30px" alt=""/>&nbsp;B C L
                    </a>
                </h3>
            </div>
            <div class="nav_w3ls">

            </div>
            <div class="buttons mt-lg-0 mt-2">
                <a href="controller/logout.php?admin-logout=true">LogOut</a>
            </div>
        </div>
    </div>
</header>
<!-- //header -->
<section class="jumbotron">

    <div style=" margin-top: 80px">
                    <div class="col-lg-12 mt-lg-0">
                        <h3 class="text-center card text-black col-12 mt-3">
                            List of Inquiries
                        </h3>
                        <div class="table-responsive">
                            <table id="" class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Subject</th>
                                    <th scope="col">Message</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($inqRow as $Row) {;?>
                                <tr>
                                    <td><?php echo $Row['id'] ?></td>
                                    <td><?php echo $Row['name'] ?></td>
                                    <td><?php echo $Row['email']?></td>
                                    <td><?php echo $Row['subject']?></td>
                                    <td><?php echo $Row['message']?></td>
                                </tr>
                                <?php }  ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </div>

</section>


</body>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
<script src="validation/js/jquery.validationEngine.js"></script>
<script src="validation/js/languages/jquery.ValidationEngine.en.js"></script>
<script src="validation/jquery.form.js"></script>
<script src="validation/js/common.js"></script>
<script src="validation/js/register.js"></script>
</html>
