<?php
    include("conexion.php");
    $id=$_GET['id'];
    $queryC="update clientes set estado='0' where id=$id";
    $enviarC=mysqli_query($db,$queryC);	
    header('location:listarClientes.php');
?>