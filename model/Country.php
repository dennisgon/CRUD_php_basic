<?php 
ini_set('display_errors',1);
error_reporting(E_ALL);
	class Country{ 
		private $table = "country";
		//untuk view
		public function view($con){
		    $text = "SELECT * FROM $this->table ";
		    $query = mysqli_query($con, $text);
		    if(mysqli_num_rows($query) >= 1){
		        $result = array();
		        while($row = mysqli_fetch_assoc($query)){
		            $result[] = $row;
		        }
		    }
		    //$result = $text;
		    return $result;
		}
	}
?>