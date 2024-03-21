<?php
include("conexion.php");
session_start();
if (isset($_POST['enviar'])) {
	$usuario=$_POST['username'];
	$clave=$_POST['password'];
	$query="select * from usuarios where usuario='$usuario' and clave='$clave' ";
	$enviar=mysqli_query($db,$query);
	$ver=mysqli_num_rows($enviar);
	if($ver>0){

	$_SESSION['usuario']=$usuario;
	
	$enviar=mysqli_query($db,$query);
	$ver=mysqli_fetch_array($enviar);
	
	$_SESSION['usuario']=$ver['id'];
	$_SESSION['nombre']=$ver['nombre'];

	// $perfil=$ver['docCedula'];
    header('location:principal.php');
	
}
	echo '<script> alert("Datos Erroneos")</script>';

}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
            
</head>
<body>

<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fw-light fs-5"><b>GOURMET FOOD SERVICE</b> </h5>
            <form method="post" name="frmUsuarios">
              <div class="form-floating mb-3">
                <input type="text" class="form-control" name="username" placeholder="name@example.com">
                <label for="floatingInput">Usuario</label>
              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                <label for="floatingPassword">Password</label>
              </div>
              <div class="d-grid">
                <input type="submit" name="enviar" value="Ingresar" class="btn btn-primary btn-login text-uppercase fw-bold">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</body>
</html>
