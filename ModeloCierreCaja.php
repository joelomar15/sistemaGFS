<?php
date_default_timezone_set('America/Guayaquil'); // 
class CierreCaja
{
    private $db;

    public function __construct()
    {
        include "conexion.php";
        $this->db = $db;
    }


    function insertarCierreCaja()
    {
        $valorVenta = $_POST['valorVenta'] ?? null;
        $fecha = date('Y-m-d');

        $consulta = "SELECT COUNT(*) as count FROM cierrecaja WHERE DATE(fechaHora) = '$fecha'";
        $resultado = mysqli_query($this->db, $consulta);
        $fila = mysqli_fetch_assoc($resultado);
        $existeRegistro = $fila['count'] > 0;

        if ($existeRegistro) {
            echo '<script> alert("Ya existe un registro de cierre de caja para el dia de Hoy.")</script>';
        } else {
            $mostrar = "INSERT INTO cierrecaja VALUES (0,NOW(), $valorVenta, '1')";
            $resultado = mysqli_query($this->db, $mostrar);

            if ($resultado) {
                echo '<script> alert("El Cierre de Caja fue Ingresado Correctamente.")</script>';
            } else {
                echo '<script> alert("No se pudo realizar la operación.")</script>';
            }
        }
    }

    function validarReporte($fecha1,$fecha2){
        $consulta = "SELECT COUNT(*) as count FROM cierrecaja WHERE DATE(fechaHora)  BETWEEN '$fecha1' AND '$fecha2'";
        $resultado = mysqli_query($this->db, $consulta);
        $fila = mysqli_fetch_assoc($resultado);
        return $fila['count'] > 0;
    }
}
