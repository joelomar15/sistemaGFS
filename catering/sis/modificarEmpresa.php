<?php
  include 'conexion.php';
  $id=$_POST['id'];
  $nombre=$_POST['nombre'];
  $ruc=$_POST['ruc'];
  $direccion=$_POST['direccion'];
  $query="update empresa set nombre='$nombre',ruc='$ruc' where id=$id";
  $enviar=mysqli_query($db,$query);
  header('location:listarEmpresas.php');
   