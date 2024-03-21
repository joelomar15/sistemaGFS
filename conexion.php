<?php
	$db = new mysqli("localhost","root","","ventas");
	if (mysqli_connect_errno()) {
		echo "No se puede conectar 🚫";
	}
?>