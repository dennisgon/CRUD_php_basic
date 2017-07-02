<?php  
	error_reporting(E_ALL);
ini_set('display_errors', 1);


	if (!isset($_GET['action'])) {
		require "model/Connection.php";
		$obj_connect = new Connection();

		require "model/Distributor.php";
		$obj_distributor = new Distributor();

		$con = $obj_connect->up();
		$datas = $obj_distributor->view($con);
		$obj_connect->down();
	}else{

		if ($_GET['action']=="add") {
			require "../model/Connection.php";
			$obj_connect = new Connection();

			require "../model/Distributor.php";
			$obj_distributor = new Distributor();
			
			$con = $obj_connect->up();
			$title = $_POST['title'];

			$target_dir = "uploads/";
			$target_file = $target_dir . basename($_FILES["data"]["name"]);
			move_uploaded_file($_FILES["data"]["tmp_name"], $target_file);

			$author = $_POST['author'];
			$fileUpload = $_POST['fileUpload'];


			$date = date("Y-m-d H:i:s");
			$query = "INSERT INTO upload values ('','$title','$fileUpload','$target_file','$date','$author')";
			$retval = mysqli_query($con,$query);
			header('Location: ../upload.php');

			$obj_connect->down();
		}
	}
?>