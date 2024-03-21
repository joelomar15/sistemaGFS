<?php 
	include('conexion.php');
  include('cabecera.php');
	$fecha1=$_REQUEST['fecha1'];
	$fecha2=$_REQUEST['fecha2'];
	$empleado=$_REQUEST['empleado'];
    $empresa=$_REQUEST['empresa'];

?>


<body>

<?php
	$query="";
	if ($empleado=="Todos") {
        if ($empresa>0) {
            $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2' and emp.id='$empresa'";
            
        }else{
            $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2'";
        }
		
		
	}else{
        if ($empresa>0) {
            $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2' and emp.id='$empresa' and tipo='$empleado'";
            //echo "3".$query;
        }else{
            $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresa,cl.centro_costos as codigo,c.fecha fecha, c.hora hora, c.tipo tipo  from consumos c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2' and tipo='$empleado'";
            // "4".$query;
        }
		
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
      <th scope=col>Centro Costos</th>
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
    } while ($ver=mysqli_fetch_array($enviar));
    echo '</tbody></table>
		Total Consumos: '.$contar.'<br>
		<a href="exportarExcel.php?fecha1='.$fecha1.'&fecha2='.$fecha2.'&empleado='.$empleado.'" class="btn btn-sm btn-success">Exportar Excel</a></center></div>';
}
?>
