<?php 
session_start() ;

require_once("../model/Connection.php");
$obj_connect = new Connection();
	
require_once("../model/Logins.php");
$obj_logins = new Logins();


    if(!isset($_GET['action'])){
    		
        $con = $obj_connect->up();

        
        $datas = $obj_beans->view($con);

        $obj_connect -> down();


    }else if(isset($_GET['action'])){ 
    	if($_GET['action'] == "login"){
			$con = $obj_connect->up();
			$username = mysqli_real_escape_string($con, $_POST['username']);
			$password = mysqli_real_escape_string($con, $_POST['password']);
			if ($obj_logins->login($username, $password, $con) == 1) {
				echo "berhasil";
				$_SESSION["username"] = $username;
				header('Location: ../index.php');
				// echo $_SESSION['username'];
			}else{
				header('Location: ../login.php');
			}
	    	$obj_connect->down();
    	}else if ($_GET['action'] == "logout") {
    		session_destroy();
    		header('Location: ../login.php');
    	}
    }
?>