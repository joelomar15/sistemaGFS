<?php
if(!isset($_POST["total"])) exit;

include("catering/sis/conexion.php");
session_start();
require __DIR__ . '/catering/sis/imprimir/autoload.php'; //Nota: si renombraste la carpeta a algo diferente de "ticket" cambia el nombre en esta línea
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
$cliente = $_POST["cliente"];
$total = $_POST["total"];
include_once "base_de_datos.php";
$mensaje="";

$ahora = date("Y-m-d H:i:s");

$query25="select * from clientes where cedula='$cliente'";
        $enviar25=mysqli_query($db,$query25);
        $ver25=mysqli_fetch_array($enviar25);
if ($ver25['id']>0) {
    $cliente =$ver25['id'];


$sentencia = $base_de_datos->prepare("INSERT INTO ventas(id_cliente,fecha, total) VALUES (?, ?, ?);");
$sentencia->execute([$cliente,$ahora, $total]);
$totalv=$total;

$sentencia = $base_de_datos->prepare("SELECT id FROM ventas ORDER BY id DESC LIMIT 1;");
$sentencia->execute();
$resultado = $sentencia->fetch(PDO::FETCH_OBJ);

$idVenta = $resultado === false ? 1 : $resultado->id;

$base_de_datos->beginTransaction();
$sentencia = $base_de_datos->prepare("INSERT INTO productos_vendidos(id_producto, id_venta, cantidad) VALUES (?, ?, ?);");
$sentenciaExistencia = $base_de_datos->prepare("UPDATE productos SET existencia = existencia - ? WHERE id = ?;");
foreach ($_SESSION["carrito"] as $producto) {
	$total += $producto->total;
	$sentencia->execute([$producto->id, $idVenta, $producto->cantidad]);
	$sentenciaExistencia->execute([$producto->cantidad, $producto->id]);
	$query21="select * from productos where id='$producto->id'";
        
        $enviar21=mysqli_query($db,$query21);
        
        $ver21=mysqli_fetch_array($enviar21);
	$mensaje=$mensaje." ".$producto->cantidad." ".$ver21['descripcion']." $ ".$ver21['precioVenta']."\n";
}
$query20="select * from configuracion where nombre='impresora' and descripcion='si'";
        
        $enviar20=mysqli_query($db,$query20);
        
        $ver20=mysqli_fetch_array($enviar20);
        if ($ver20['id']>0) {
            $query24="SELECT *,now() as fecha FROM clientes where id=$cliente";
        $enviar24=mysqli_query($db,$query24);
        $ver24=mysqli_fetch_array($enviar24);
            $nombre_impresora = $ver20['observacion']; 
                $connector = new WindowsPrintConnector($nombre_impresora);
                $printer = new Printer($connector);
                $printer->text("          ****Gourmet Food Service****\n                ****CAFETERIA****\n\nNombre:".$ver24['nombre']."\n$mensaje\nTotal Venta: $".$totalv."\n\nFecha:".$ver24['fecha']."\n\n                 ****GRACIAS****");
                $printer->feed();
                $printer->cut();
                $printer->pulse();
                $printer->close();
$base_de_datos->commit();
unset($_SESSION["carrito"]);
$_SESSION["carrito"] = [];
header("Location: ./vender.php?status=1");
}else{
    $base_de_datos->commit();
unset($_SESSION["carrito"]);
$_SESSION["carrito"] = [];
header("Location: ./vender.php?status=1");
}
}else{
   header("Location: ./vender.php?status=4");
}
?>