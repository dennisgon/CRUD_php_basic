<?php 
require_once("model/Connection.php");
$obj_connect = new Connection();
	
require_once("model/Beans.php");
$obj_beans = new Beans();


// if(isset($_SESSION['customer_id'])){
    if(!isset($_GET['action'])){
    		
        $con = $obj_connect->up();

        
        $datas = $obj_beans->view($con);

        $obj_connect -> down();


    } 
// }
?>