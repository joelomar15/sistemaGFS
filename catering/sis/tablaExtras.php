<?php 
	include('conexion.php');
  include('cabecera.php');
	$fecha1=$_REQUEST['fecha1'];
	$fecha2=$_REQUEST['fecha2'];
    $empresa=$_REQUEST['empresa'];
?>


<body>
<?php
	$query="";
    if ($empresa>0) {
        $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresas,c.descripcion as codigo,c.fecha fecha, c.precio as precio  from extras c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2' and emp.id='$empresa'";
        
    }else{
        $query="SELECT cl.cedula cedula,cl.nombre cliente,emp.nombre empresas,c.descripcion as codigo,c.fecha fecha, c.precio as precio  from extras c,clientes cl, empresa emp where c.cliId=cl.id and emp.id=cl.empId and c.fecha BETWEEN '$fecha1' and '$fecha2'";
    }
    
	
//echo $query;
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_fetch_array($enviar);
    $contar=mysqli_num_rows($enviar);
	echo "<center><h1>Registros de Extras</h1></center>";
	echo "<div class=container><center><table class=table >
        <thead class=thead-dark>
    <tr>
      <th scope=col>Cedula</th>
      <th scope=col>Nombre</th>
      <th scope=col>Empresa</th>
      <th scope=col>Extra</th>
      <th scope=col>Fecha</th>
      <th scope=col>Precio</th>
      
    </tr>
  </thead>";
if($contar>0) {
    do {

        $cedula=$ver['cedula'];
        $cliente=$ver['cliente'];
        $empresas=$ver['empresas'];
        $codigo=$ver['codigo'];
        $fecha=$ver['fecha'];
        $precio=$ver['precio'];

        echo '
		<tbody>
		<tr>
		
		<td>'.$cedula.'</td>
		<td>'.$cliente.'</td>
        <td>'.$empresas.'</td>
        <td>'.$codigo.'</td>
		<td>'.$fecha.'</td>
		<td>'.$precio.'</td>
		
		</tr>

	';
    } while ($ver=mysqli_fetch_array($enviar));
    echo '</tbody></table>
		Total Extras: '.$contar.'<br>
		<a href="exportarExcelExtras.php?fecha1='.$fecha1.'&fecha2='.$fecha2.'&empresa='.$empresa.'" class="btn btn-sm btn-success">Exportar Excel</a></center></div>';
}
?>
