<?php
  include 'conexion.php';
  $id=$_POST['id'];
  $nombre=$_POST['nombre'];
  $cedula=$_POST['cedula'];
  $empresa=$_POST['empresa'];
  $direccion=$_POST['direccion'];
  $correo=$_POST['correo'];
  $clave=$_POST['clave'];
  $query="update clientes set empId='$empresa',nombre='$nombre',cedula='$cedula',correo='$correo',clave='$clave' where id=$id";
  $enviar=mysqli_query($db,$query);
  echo $empresa;
  header('location:listarClientes.php');
?>