<?php
	$db = new mysqli("localhost","root","","aseguradora2");
	if (mysqli_connect_errno()) {
		echo "No se puede conectar 🚫";
	}
?>