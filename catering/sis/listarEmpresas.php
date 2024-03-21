<?php
    include ('conexion.php');
    include ('cabecera.php');
?>

<body>
    

      <center>
    <main>
        <b><h1 style="background-color: white;color:#156f15;">Listado de Empresas</h1></b>
        <br>
        <?php 
            $query="select * from empresa";
            $enviar=mysqli_query($db,$query);
            $ver=mysqli_fetch_array($enviar);
            echo "<div class=container><center><table class= table responsive >
            <thead class=thead-dark>
                <tr>
                <th scope=col>ID</th>
                <th scope=col>Nombre</th>
                <th scope=col>RUC</th>
                <th scope=col>Accion</th>
                </tr>
            </thead>";
            do{
                $id=$ver['id'];
                $cedula=$ver['nombre'];
                $nombre=$ver['ruc'];

            echo '
                <tbody>
                <tr>
                    <td>'.$id.'</td>
                    <td>'.$cedula.'</td>
                    <td>'.$nombre.'</td>
                    <td><a href="editarEmpresa.php?id='.$id.'"><input type="button" value="Editar" name="Eliminar"class="btn btn-sm btn-warning"></a>
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
