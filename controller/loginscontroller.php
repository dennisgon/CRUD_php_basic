<?php 
require_once("model/Connection.php");
$obj_connect = new Connection();
	
require_once("model/Logins.php");
$obj_logins = new Logins();


    if(!isset($_GET['action'])){
    		
        $con = $obj_connect->up();

        
        $datas = $obj_beans->view($con);

        $obj_connect -> down();


    }else if(isset($_GET['action'])){ 
    	if($_GET['action'] == "login"){
    	}
    }
?>