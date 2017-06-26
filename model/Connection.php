<?php 
class Connection{
// Include database connection settings
    	 private $username = "root";
		 private $password = "";
		 private $hostname = "localhost";
		 private $database = "movedb";
    
	public function up(){
		$con = $this->dbh_system = mysqli_connect($this->hostname, $this->username, $this->password) or die("Unable to connect to MySQL");

		$this->selected = mysqli_select_db($this->dbh_system, $this->database) or die("Could not fetch database");

		return $con;
	}

	public function down(){
		$dbh_system = mysqli_connect($this->hostname, $this->username, $this->password);
		mysqli_close($dbh_system);
	}
}
?>