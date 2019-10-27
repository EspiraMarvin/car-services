<?php
require_once(__DIR__.'/../model/dbconfig.php');
class USER{
    private $conn;
//    public  $domain;

    public function __construct()
    {
        $database = new Database();
        $db = $database->dbConnection();
        $this->conn = $db;
//        $this->domain="//localhost/qia/";
    }

    //run query
    public function runQuery($sql)
    {
//        $this->dd($_POST);
    $stmt = $this->conn->prepare($sql);
    return $stmt;
    }

    //register admin
    public function adminRegister($email,$pass)
    {
        try
        {
            $new_password = password_hash($pass, PASSWORD_DEFAULT);

            $stmt = $this->conn->prepare("INSERT INTO admin(email,password)
                                            VALUES(:email, :pass)");

            $stmt->bindparam(":email", $email);
            $stmt->bindparam(":pass", $new_password);

            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    // admin login
    public function adminLogin($email,$pass)
    {
        try
        {
            $stmt = $this->conn->prepare("SELECT id, email, password FROM admin WHERE email=:email");
            $stmt->execute(array(':email'=>$email));
            $userRow=$stmt->fetch(PDO::FETCH_ASSOC);
            if($stmt->rowCount() > 0)
            {
//                dd(password_verify($pass, $userRow['pass']));
                if(password_verify($pass, $userRow['password']))
                {
//                    dd($userRow);
                    $_SESSION['admin_session'] = $userRow['id'];

                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    //admin session
    public function is_adminloggedin()
    {
        if(isset($_SESSION['admin_session']))
        {
            return true;
        }
        return false;
    }

    //admin logout
    public function adminLogout()
    {
        session_destroy();
        unset($_SESSION['admin_session']);
        return true;
    }

    //organization registration
    public function sendByEmail($cname,$cemail,$csubject,$cmessage)
    {
        try
        {

            $stmt = $this->conn->prepare("INSERT INTO complaints(name,email,subject,message)
                                            VALUES(:cname, :cemail, :csubject, :cmessage)");

            $stmt->bindparam(":cname", $cname);
            $stmt->bindparam(":cemail", $cemail);
            $stmt->bindparam(":csubject", $csubject);
            $stmt->bindparam(":cmessage", $cmessage);

            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    //inquire information
    public function inquireInfo($iname,$imail,$subject,$message)
    {
        try
        {

            $stmt = $this->conn->prepare("INSERT INTO inquire(name,email,subject,message)
                                            VALUES(:iname, :imail, :subject, :message)");

            $stmt->bindparam(":iname", $iname);
            $stmt->bindparam(":imail", $imail);
            $stmt->bindparam(":subject", $subject);
            $stmt->bindparam(":message", $message);

            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    //organization login
    public function orgLogin($omail,$upass)
    {
        try
        {
            $stmt = $this->conn->prepare("SELECT org_id, org_name, org_email, org_location, org_pass FROM organizations WHERE org_email=:omail");
            $stmt->execute(array('omail'=>$omail));
            $userRow=$stmt->fetch(PDO::FETCH_ASSOC);
            if($stmt->rowCount() > 0)
            {
                if(password_verify($upass, $userRow['org_pass']))
                {
                    $_SESSION['org_session'] = $userRow['org_id'];

                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    //org session
    public function is_orgloggedin()
    {
        if(isset($_SESSION['org_session']))
        {
            return true;
        }
        return false;
    }

    //org logout
    public function orgLogout()
    {
        session_destroy();
        unset($_SESSION['org_session']);
        return true;
    }

    //org post attachment
    public function postAttach($org_id,$industry,$title,$c_date,$applicants){

        try
        {
//            dd($_POST);
            $stmt = $this->conn->prepare("INSERT INTO attachments(org_id,att_industry,att_title,c_date,applicants_needed)
                                            VALUES(:org_id, :industry, :title, :c_date, :applicants)");

            $stmt->bindParam(":org_id", $org_id);
            $stmt->bindparam(":industry", $industry);
            $stmt->bindparam(":title", $title);
            $stmt->bindparam(":c_date", $c_date);
            $stmt->bindparam(":applicants", $applicants);

            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }

    //checkbox to show you;ve been placed
    public function showAttached($user_id,$attached){

        try
        {
//            dd($_POST);
            $stmt = $this->conn->prepare("INSERT INTO attached(user_id,status)
                                            VALUES(:user_id, :attached)");

            $stmt->bindParam(":user_id", $user_id);
            $stmt->bindParam(":attached", $attached);


            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;
    }
    //file upload + submit application via email
    public function uploadApplication($user_id,$unames,$letter,$cv){

        try
        {

            $stmt = $this->conn->prepare("INSERT INTO applications(user_id,user_name,cover_letter,cv_url) 
		                                               VALUES(:user_id,:unames, :letter, :cv)");

            $stmt->bindparam(":user_id", $user_id);
            $stmt->bindparam(":unames", $unames);
            $stmt->bindparam(":letter", $letter);
            $stmt->bindparam(":cv", $cv);


            $stmt->execute();

            return $stmt;
        }
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
        return false;


    }
    //    function to get file extension
    public function getExtension($str){
        $i = strrpos($str, ".");
        if(!$i)return "";
        $length = strlen($str) - $i;
        $ext = substr($str, $i+1, $length);

        return $ext;
    }

    //redirect url function
    public function redirect($url)
    {
        header("location: $url");
    }

//    debug function
    function dd($var){
            var_dump($var);
            die();
        }

// function to send email

}
