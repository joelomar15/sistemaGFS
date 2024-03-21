<?php
    include ('conexion.php');
    include ('cabecera.php');
?>


<body>
    

      <center>
    <main>
        <b><h1 style="background-color: white;color:#156f15;">Listado de Clientes</h1></b>
        <br>
        <div class="row">
        <div class="col-md-5">
            <form action="recibe_excel.php" method="POST" enctype="multipart/form-data">
                <div class="file-input text-center">
                    <input  type="file" name="dataCliente" id="file-input" class="file-input__input" accept=".csv"/>
                    <label class="file-input__label" for="file-input">
                    <i class="zmdi zmdi-upload zmdi-hc-2x"></i>
                    <span>Elegir Archivo CSV</span></label
                    >
                </div>
                <div class="text-center mt-5">
                    <input type="submit" name="subir" class="btn-enviar" value="Subir Archivo CSV"/>
                </div>
            </form>
        </div>
        </div>




        <?php 
                /* Pruebas excel */
               
    
    $sqlProductos         = ("SELECT * FROM clientes ORDER BY id ASC");
    $queryDataProductos   = mysqli_query($db, $sqlProductos);
    $totalProducts        = mysqli_num_rows($queryDataProductos);
                /* Fin Pruebas */



            $query="select c.id,c.cedula,c.nombre,c.direccion,e.nombre as empresa from clientes c,empresa e where c.empId=e.id and c.estado='1' order by c.id";
            $enviar=mysqli_query($db,$query);
            $ver=mysqli_fetch_array($enviar);
            echo "<div class=container><center><table class= table responsive >
            <thead class=thead-dark>
                <tr>
                <th scope=col>ID</th>
                <th scope=col>Cédula</th>
                <th scope=col>Nombre</th>
                <th scope=col>Direccion</th>
                <th scope=col>Empresa</th>
                <th scope=col>Accion</th>
                </tr>
            </thead>";
            do{
                $id=$ver['id'];
                $cedula=$ver['cedula'];
                $nombre=$ver['nombre'];
                $direccion=$ver['direccion'];
                $empresa=$ver['empresa'];

            echo '
                <tbody>
                <tr>
                    <td>'.$id.'</td>
                    <td>'.$cedula.'</td>
                    <td>'.$nombre.'</td>
                    <td>'.$direccion.'</td>
                    <td>'.$empresa.'</td>


                    <td><a href="editarCliente.php?id='.$id.'"><input type="button" value="Editar" name="Eliminar"class="btn btn-sm btn-warning"></a>
                        <a href="eliminarCliente.php?id='.$id.'"><input type="button" value="Eliminar" name="Eliminar"class="btn btn-sm btn-danger" onclick="return ConfirmarEliminar()"></a>
                    </td>
                </tr>

            ';
            }while ($ver=mysqli_fetch_array($enviar)); 
                echo '</tbody></table></center></div>';
        ?>
        
    </main>
    </center>
    <script type="text/javascript">
        function ConfirmarEliminar()
        {
            var respuesta= confirm("Esta seguro de Eliminar el Cliente");
            if(respuesta==true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </script>
</body>

