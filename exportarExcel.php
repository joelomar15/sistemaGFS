<?php
include 'conexion.php';
header("Content-type: application/vnd.ms-excel;charset=utf-8");
header("Content-Disposition: attachment; filename=reporte_".time().".xls");
header("Pragma: no-cache");
header("Expires: 0");  

$sentencia=$_REQUEST['fecha1'];
$sentencia2=$_REQUEST['fecha2'];


$resultados = mysqli_query($db,"SELECT * FROM clientes c JOIN productos p JOIN productos_vendidos pv JOIN ventas v where pv.id_producto=p.id and pv.id_venta=v.id and v.id_cliente=c.id and v.fecha BETWEEN '$sentencia' and '$sentencia2'");

echo 
"
   
  <table width=\"100%\" border=\"1\">
    <tr>
      <th scope=col>Cedula</th>
      <th scope=col>Nombre</th>
      <th scope=col>Fecha</th>
      <th scope=col>Cantidad</th>
      <th scope=col>Producto</th>
      <th scope=col>Precio</th>
      <th scope=col>Total</th>
    </tr>";
while($consulta = mysqli_fetch_array($resultados))
{

    $cedula=$consulta['cedula'];
    $nombre=$consulta['nombre'];
    $fecha=$consulta['fecha'];
    $descripcion=$consulta['descripcion'];
    $precio=$consulta['precioVenta'];
    $cantidad=$consulta['cantidad'];
    $total=$precio*$cantidad;
    echo '
        <tbody>
        <tr>
        <td>'.$cedula.'</td>
        <td>'.$nombre.'</td>
        <td>'.$fecha.'</td>
        <td>'.$cantidad.'</td>
        <td>'.$descripcion.'</td>
        <td>'.$precio.'</td>
        <td>'.$total.'</td>
        </tr>
  
';
}
echo "</table>";
