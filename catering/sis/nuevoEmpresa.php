<?php
    include ('conexion.php');
    include('cabecera.php');
    if (isset($_GET['enviar'])) {
        $nombre=$_REQUEST['nombre'];
        $ruc=$_REQUEST['ruc'];
        $direccion=$_REQUEST['direccion'];
        $estado=$_REQUEST['estado'];
        $query="insert into empresa values(0,'$nombre','$ruc','$direccion','$estado')";
        $enviar=mysqli_query($db,$query);
        echo'<script>alert("Empresa Creada Correctamente");
        window.location="listarEmpresas.php";</script>';
       
        
    }
?>


<body>
      <center>
    <main>
        <b><h1 style="background-color: white;color:#156f15;">Ingreso de Clientes</h1></b>
        <br>
        <form id="login_form" class="form_class" method="get">

            <div class="form_div">
                <label>Nombre:</label>
                <input class="field_class" name="nombre" id="nombre" type="text" placeholder="Nombre" autofocus required>
                <label>ruc:</label>
                <input id="ruc" class="field_class" name="ruc" id="ruc" type="text" placeholder="Ruc" required>

                <label>Direccion:</label>
                <input id="text" class="field_class" name="direccion" id="direccion" type="text" placeholder="Ingrese la Direccion">
                <label>Estado:</label>
                <select name="estado" class="form-control">
                    <option value="1" selected>Activo</option>
                    <option value="0">Inactivo</option>
                </select>
                <!-- <input class="field_class" name="empresa" id="empresa" type="text" placeholder="Ingrese su empresa" required> -->
                <button class="submit_class" name="enviar" type="submit">Guardar</button>
                
            </div>
        </form>
        
    </main>
    </center>
   
</body>
<br><br>