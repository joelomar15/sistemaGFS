<?php
    include ('conexion.php');
    include('cabecera.php');
    if (isset($_REQUEST['status'])) {
        if ($_REQUEST['status']=="1") {
            $star='<div class="alert alert-success" role="alert">
  Consumo Registrado  
</div>';    
        }if ($_REQUEST['status']=="2") {
            $star='<div class="alert alert-warning" role="alert">
  Usuario no Registrado  
</div>';    
        }if ($_REQUEST['status']=="3") {
            $star='<div class="alert alert-danger" role="alert">
  Consumo no Registrado  
</div>';    
        }if ($_REQUEST['status']=="5") {
            $star='<div class="alert alert-success" role="alert">
  Extras Registrados  
</div>';    
        }if ($_REQUEST['status']=="6") {
            $star='<div class="alert alert-danger" role="alert">
  Usuario no Registrado 
</div>';    
        }
        
    }else{
        $star="";
    }
?>

<body>
      <center>
    <main style="background-image:url(imagenes/fondoalmuerzo.jpg);background-size: 100% 100%;">
        <b><h1 style="background-color: white;color:#156f15;">Consumo Almuerzos</h1></b>
        <br>
        
        
        <div style="width: 40%; float:left"> 
            <form id="login_form" class="form_class" action="guardad.php?tipo=A" method="post">

                <div class="form_div">
                    <?php echo $star ?>
                    <label>Cedula:</label>
                    <input autocomplete="off" class="field_class" name="cedula" id="cedula" type="text" placeholder="Cedula" autofocus required>
                    <button class="submit_class" type="submit" form="login_form">Consumir</button>
                </div>
                <div class="info_div">
                    <?php
                        $query="select * from consumos where fecha=CURDATE() and tipo='Almuerzo'";
                        $enviar=mysqli_query($db,$query);
                        $ver=mysqli_num_rows($enviar);
                        echo "Consumos Hoy: ".$ver;
                    ?>
                </div>
                <div class="info_div" style="text-align: left;">
                <center><h3>Extras</h3></center>
                <input class="form-check-input" type="checkbox" value="almuerzo" name="almuerzoExtra" style="align:left;">
                <label class="form-check-label" for="flexCheckCheckedDisabled">
    Almuerzo Extra
  </label>
  <br>
  <input class="form-check-input" type="checkbox" value="empaque" name="empaque">
                <label class="form-check-label" for="flexCheckCheckedDisabled">
    Empaque
  </label>    
                </div>
                
            </form>
        </div>
        <?php
            $query="";            
            $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha=CURDATE() ORDER BY hora DESC";
            $enviar=mysqli_query($db,$query);
            $ver=mysqli_fetch_array($enviar);
            $contar=mysqli_num_rows($enviar);
        ?>
<div style="width: 700px;height: 350px; float:left;overflow:scroll;">
        <?php
            $enviar=mysqli_query($db,$query);
            $ver=mysqli_fetch_array($enviar);
            $contar=mysqli_num_rows($enviar);
            
            echo "<div class=container><center><table class=table style='background-color: white' 
                <thead class=thead-dark>
            <tr>
              <th scope=col>Cedula</th>
              <th scope=col>Nombre</th>
              <th scope=col>Empresa</th>
              <th scope=col>Fecha</th>
              <th scope=col>Hora</th>
              <th scope=col>Tipo</th>
              
            </tr>
          </thead>";
if($contar>0) {


    do {

        $cedula=$ver['cedula'];
        $cliente=$ver['cliente'];
        $empresa=$ver['empresa'];
        $fecha=$ver['fecha'];
        $hora=$ver['hora'];
        $tipo=$ver['tipo'];


        echo '
                <tbody>
                <tr>
                
                <td>'.$cedula.'</td>
                <td>'.$cliente.'</td>
                <td>'.$empresa.'</td>
                <td>'.$fecha.'</td>
                <td>'.$hora.'</td>
                <td>'.$tipo.'</td>
                
                
                </tr>
        
            ';

    } while ($ver=mysqli_fetch_array($enviar));
    echo '</tbody></table>';
}
        ?>
</div>
    </main>
    </center>
   
</body>
