<?php
	include 'connect.php';
	$id = $_GET['id'];

	$query = "SELECT * FROM tamu JOIN area ON tamu.id_area = area.id WHERE tamu.id='$id'";
	$result = $mysqli->query($query);
	while($ch=$result->fetch_array(MYSQLI_ASSOC)){
		echo json_encode($ch);
	}
?>