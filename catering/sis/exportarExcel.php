<?php
    include('conexion.php');
    $fecha1=$_REQUEST['fecha1'];
    $fecha2=$_REQUEST['fecha2'];
    $empleado=$_REQUEST['empleado'];
header("Content-type: application/vnd.ms-excel;charset=utf-8");
header("Content-Disposition: attachment; filename=reporteConsumos_".time().".xls");
header("Pragma: no-cache");
header("Expires: 0");
    $query="";
    if ($empleado=="Todos") {
        $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2'";

    }else{
        $query="SELECT cl.cedula as cedula,cl.nombre as cliente,emp.nombre as empresa,cl.centro_costos as codigo,c.fecha as fecha, c.hora as hora, c.tipo as tipo from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId  and c.fecha BETWEEN '$fecha1' and '$fecha2' and tipo='$empleado'";
    }
    
//echo $query;
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_fetch_array($enviar);
    $contar=mysqli_num_rows($enviar);
    echo "<center><h1>Registros de Consumos</h1></center>";
    echo "<div class=container><center><table class=table >
        <thead class=thead-dark>
    <tr>
      <th scope=col>Cedula</th>
      <th scope=col>Nombre</th>
      <th scope=col>Empresa</th>
      <th scope=col>Codigo</th>
      <th scope=col>Fecha</th>
      <th scope=col>Hora</th>
      <th scope=col>Tipo</th>
      
    </tr>
  </thead>";
    do{
    
    $cedula=$ver['cedula'];
    $cliente=$ver['cliente'];
    $empresa=$ver['empresa'];
    $codigo=$ver['codigo'];
    $fecha=$ver['fecha'];
    $hora=$ver['hora'];
    $tipo=$ver['tipo'];
    

    echo '
        <tbody>
        <tr>
        
        <td>'.$cedula.'</td>
        <td>'.$cliente.'</td>
        <td>'.$empresa.'</td>
        <td>'.$codigo.'</td>
        <td>'.$fecha.'</td>
        <td>'.$hora.'</td>
        <td>'.$tipo.'</td>
        
        
        </tr>

    ';
    }while ($ver=mysqli_fetch_array($enviar)); 
        echo '</tbody></table>';

?>