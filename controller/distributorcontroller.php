<?php  
	

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
			$name = $_POST['name'];
			$city = $_POST['city'];
			$region = $_POST['region'];
			$country = $_POST['country'];
			$phone = $_POST['phone'];
			$email = $_POST['email'];

			$query = "INSERT INTO Distributor values ('','$name','$city','$region','$country','$phone','$email')";
			$retval = mysqli_query($con,$query);
			header('Location: ../ditributorview.php');
			$obj_connect->down();
		}
	}
?>