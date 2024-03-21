<?php
	$db = new mysqli("localhost","root","","fedex2");
	if (mysqli_connect_errno()) {
		echo "No se puede conectar 🚫";
	}
?>