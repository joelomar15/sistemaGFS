<?php
  include 'conexion.php';
  $id=$_POST['id'];
  $nombre=$_POST['nombre'];
  $cedula=$_POST['cedula'];
  $empresa=$_POST['empresa'];
  $direccion=$_POST['direccion'];
  $estado=$_POST['estado'];
  $query="update clientes set empId='$empresa',nombre='$nombre',cedula='$cedula' where id=$id";
  $enviar=mysqli_query($db,$query);
  header('location:listarClientes.php');
   