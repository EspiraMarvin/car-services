<?php
//require_once ("../controller/adminsession.php");
require_once ("../controller/class.user.php");
$user = new USER();

//$domain = "//localhost/qia/";

if(!empty($_POST)){
    //dd($_POST);
    $email = strip_tags($_POST['email']);
    $pass = strip_tags($_POST['pass']);

    if($email==""){

        $result=array();
        $result['msg']="Fill in the email!";
        $result['status']=false;
        $result['url']='adminregister.php';

        getJsonResponse($result);
    }
    elseif($pass=="")
    {
        $result=array();
        $result['msg']="Fill in password!";
        $result['status']=false;
        $result['url']='adminregister.php';

        getJsonResponse($result);
    }
    elseif (strlen($pass) < 6){

        $result=array();
        $result['msg']="Password must be atleast 6 characters!";
        $result['status']=false;
        $result['url']='adminregister.php';

        getJsonResponse($result);
    }
    else{
        try
        {

            $stmt = $user->runQuery("SELECT email FROM admin WHERE email=:email");
            $stmt->execute(array(':email'=>$email));
            $row=$stmt->fetch(PDO::FETCH_ASSOC);

            if ($row['email']===$email){

                $result=array();
                $result['msg']="Sorry Email Already Exists!";
                $result['status']=false;
                $result['url']='adminregister.php';

                getJsonResponse($result);
            }else {
                $user->adminRegister($email,$pass);

                $result=array();
                $result['msg']="Successfully Registered";
                $result['status']=true;
                $result['url']='adminlogin.php';

                getJsonResponse($result);

                }

        }catch (PDOException $e){

            echo $e->getMessage();

        }
    }
}
/*else{
    dd($_POST);
    header("Location:https://instagram.com");
}*/

function getJsonResponse($result){
    die(json_encode($result));
}
function dd($var){
    var_dump($var);
    die();
}














