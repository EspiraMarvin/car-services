<?php

//require_once ('studentsession.php');
require_once('adminsession.php');
require_once ('orgsession.php');
$user_logout = new USER();

function dd($var){
    var_dump($var);
    die();
}

if(isset($_GET['admin-logout']) && $_GET['admin-logout'] == "true")
{
  //  dd($_POST);
    $user_logout->adminLogout();
    $user_logout->redirect('../adminlogin.php');
}
