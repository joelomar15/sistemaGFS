<?php
include 'conexion.php';
header("Content-type: application/vnd.ms-excel;charset=utf-8");
header("Content-Disposition: attachment; filename=reporte_".time().".xls");
header("Pragma: no-cache");
header("Expires: 0");  

$sentencia=$_REQUEST['fecha1'];
$sentencia2=$_REQUEST['fecha2'];

//$resultados = mysqli_query($db,"SELECT * FROM ventas v JOIN productos_vendidos pv ON v.id=pv.id_venta JOIN productos p ON pv.id_producto=p.id JOIN clientes c ON v.id_cliente=c.id where v.fecha between '$sentencia' and '$sentencia2'");
$resultados = mysqli_query($db,"SELECT c.nombre,c.cedula,c.empresa,con.tipo,con.fecha,con.hora,SUM(con.precio) as suma FROM ventas v JOIN productos_vendidos pv ON v.id=pv.id_venta JOIN productos p ON pv.id_producto=p.id JOIN clientes c ON v.id_cliente=c.id where con.fecha between '$sentencia' and '$sentencia2' GROUP BY c.nombre");
echo 
"
   
  <table width=\"100%\" border=\"1\">
    <tr>
      <td><b><center>Nombre Cliente</center></b></td>
      <td><b><center>Fecha</center></b></td>
      <td><b><center>Precio</center></b></td>
      <td><b><center>Producto</center></b></td>
    </tr>";
while($consulta = mysqli_fetch_array($resultados))
{
echo 
"
    <tr>
      <td>".$consulta['nombre']."</td>
      <td>".$consulta['fecha']."</td>
      <td>".$consulta['total']."</td>
      <td>".$consulta['descripcion']."</td>
    </tr>
  
";
}
echo "</table>";
