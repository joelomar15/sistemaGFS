<?php
    include ('conexion.php');
    include ('cabecera.php');
    if (isset($_GET['enviar'])) {
        $nombre=$_REQUEST['nombre'];
        $cedula=$_REQUEST['cedula'];
        $empresa=$_REQUEST['empresa'];
        $direccion=$_REQUEST['direccion'];
        $estado=$_REQUEST['estado'];
        $query="insert into clientes values(0,'$empresa','$cedula','$nombre','$direccion','','','1','12345','$estado')";
        $enviar=mysqli_query($db,$query);
        echo'<script>alert("Cliente Ingresado")
        window.location="listarClientes.php";</script>';
        
        
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
                <label>Cedula:</label>
                <input id="pass" class="field_class" name="cedula" id="cedula" type="text" placeholder="Cédula" required>
                <label>Empresa:</label>
                <select class="form-control" name="empresa">
                <?php 
                    $query1="select * from empresa";
                    $enviar1=mysqli_query($db,$query1);
                    $ver1=mysqli_fetch_array($enviar1);
                    do{
                        $id=$ver1['id'];
                        $nombre=$ver1['nombre'];
                        if ($ver1['id']==$id) {
                          echo '
                              <option value="'.$id.'" selected>'.$nombre.'</option>';
                        }else{
                          echo '
                              <option value="'.$id.'">'.$nombre.'</option>';
                        
                        }
                    }while ($ver1=mysqli_fetch_array($enviar1));
                ?>
                </select>
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