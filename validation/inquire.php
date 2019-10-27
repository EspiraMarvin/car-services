<?php
require_once ("../controller/class.user.php");

$user = new USER();

if(!empty($_POST)) {

    $name = strip_tags($_POST['name']);
    $email = strip_tags($_POST['email']);
    $subject = strip_tags($_POST['subject']);
    $message = strip_tags($_POST['message']);


    if($name==""){

        $result=array();
        $result['msg']="Enter your Name!";
        $result['status']=false;
        $result['url']='contact.php#info';

        getJsonResponse($result);
    }elseif ($email==""){

        $result=array();
        $result['msg']="Enter your Email Address!";
        $result['status']=false;
        $result['url']='contact.php#info';

        getJsonResponse($result);
    }elseif ($subject==""){

        $result=array();
        $result['msg']="Enter the Subject!";
        $result['status']=false;
        $result['url']='contact.php#info';

        getJsonResponse($result);
    }elseif ($message==""){

        $result=array();
        $result['msg']="Enter the Message!";
        $result['status']=false;
        $result['url']='contact.php#info';

        getJsonResponse($result);
    } else{
        try{

            $user->inquireInfo($name,$email,$subject,$message);

            $result=array();
            $result['msg']="Successful! You'll Receive Feedback via Email";
            $result['status']=true;
            $result['url']='contact.php#info';

            getJsonResponse($result);
        }
        catch (PDOException $e){

            echo $e->getMessage();
        }
    }

}
//    get json response
function getJsonResponse($result){
    die(json_encode($result));
}

