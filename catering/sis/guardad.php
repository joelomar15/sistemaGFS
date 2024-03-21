<?php
     require __DIR__ . '/imprimir/autoload.php'; //Nota: si renombraste la carpeta a algo diferente de "ticket" cambia el nombre en esta línea
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
    include ('conexion.php');
    $mensaje="";
    $tipo=$_REQUEST['tipo'];
    $cedula=$_REQUEST['cedula'];
    $completo="";
    $re="";
    if ($tipo=="A") {
        $completo="Almuerzo";
        $re="almuerzos.php";
    }if ($tipo=="D") {
        $completo="Desayuno";
        $re="desayunos.php";
    }if ($tipo=="M") {
        $completo="Merienda";
        $re="meriendas.php";
    }
    $query59="select * from clientes where cedula='$cedula' and estado='1'";
$enviar59=mysqli_query($db,$query59);
$ver59=mysqli_num_rows($enviar59);
if ($ver59>0) {
     if (isset($_REQUEST['empaque'])) {
        $empaque="Empaque";
        $query50="select * from clientes where cedula='$cedula'";
        $enviar50=mysqli_query($db,$query50);
        $ver50=mysqli_num_rows($enviar50);
        $ver51=mysqli_fetch_array($enviar50);
        $cid=$ver51['id'];
        if($ver50>0){
            $query52="insert into extras values(0,'$cid','Empaque','0.60',now(),'1')";
            $enviar52=mysqli_query($db,$query52);
            $mensaje=$mensaje." Extra: Empaque $0.60 \n";
        }


    }
    if (isset($_REQUEST['almuerzoExtra'])) {
        $almuerzoe="Almuerzo Extra";
        $query50="select * from clientes where cedula='$cedula'";
        $enviar50=mysqli_query($db,$query50);
        $ver50=mysqli_num_rows($enviar50);
        $ver51=mysqli_fetch_array($enviar50);
        $cid=$ver51['id'];
        if($ver50>0){
            $query52="insert into extras values(0,'$cid','Almuero Extra','3.50',now(),'1')";
            $enviar52=mysqli_query($db,$query52);
            $mensaje=$mensaje." Extra: Almuerzo Extra $3.50 \n";
        }
    }
    $query="select * from clientes where cedula='$cedula'";
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_num_rows($enviar);
    if($ver>0){
        $query2="select *,c.nombre as ncliente,c.id as cid from clientes c, empresa e where c.cedula='$cedula' and c.empId=e.id";
        echo $query2;
        $enviar2=mysqli_query($db,$query2);
        /* $clienteID=$ver2['id'];
        $nombre=$ver2['nombre'];*/
	    
        $enviar2=mysqli_query($db,$query2);
        $ver2=mysqli_fetch_array($enviar2);
        $clienteID=$ver2['cid'];
        $cod=$ver2['nombre'];
        $nombre=$ver2['ncliente']; 
        $consumos=$ver2['consumos'];
        $query3="select * from consumos where cliId='$clienteID' and fecha=CURRENT_DATE and tipo='$completo'";
        echo $query3;
        $enviar3=mysqli_query($db,$query3);
        $ver3=mysqli_num_rows($enviar3);
        if($ver2['estado']==0){
            echo"<script>
                    alert('Usuario dado de baja');
                    window.location = '$re';
                  </script>";
    }
        else{
            if($ver3>0){
                //echo "ya consumio hoy";
                if ($consumos>99) {
                   $query4="insert into consumos values(0,'$clienteID',now(),CURTIME(),'$completo','0.00')";
                $enviar4=mysqli_query($db,$query4);
                $query20="select max(id) as ul from consumos";
                $enviar20=mysqli_query($db,$query20);
                $ver20=mysqli_fetch_array($enviar20);
                $ultimo=$ver20['ul'];
                $query21="select * from consumos where id=$ultimo";
                $enviar21=mysqli_query($db,$query21);
                $ver21=mysqli_fetch_array($enviar21);
                $ultimo2=$ver21['fecha'];
                echo"<script>
                        window.location = '$re?status=1';
                      </script>";
                $query20="select * from configuracion where nombre='impresora' and descripcion='si'";
        
        $enviar20=mysqli_query($db,$query20);
        
        $ver20=mysqli_fetch_array($enviar20);
        if ($ver20['id']>0) {
            $nombre_impresora = $ver20['observacion']; 
                $connector = new WindowsPrintConnector($nombre_impresora);
                $printer = new Printer($connector);
                $printer->text("****Gourmet Food Service****\nCliente: $nombre\nCedula: $cedula\nEmpresa: $cod\nFecha: $ultimo2\n\n$completo \n**Extra**\n$mensaje****GRACIAS****\n\n\n\n\n\n\n");
                $printer->feed();
                $printer->cut();
                $printer->pulse();
                $printer->close(); 
        }
                
                }else{
                    if (isset($empaque)||isset($almuerzoe)) {
                        $query20="select * from configuracion where nombre='impresora' and descripcion='si'";
        
        $enviar20=mysqli_query($db,$query20);
        
        $ver20=mysqli_fetch_array($enviar20);
        if ($ver20['id']>0) {
            $nombre_impresora = $ver20['observacion']; 
                $connector = new WindowsPrintConnector($nombre_impresora);
                $printer = new Printer($connector);
                $printer->text("****Gourmet Food Service****\n****EXTRA SIN ALMUERZO****\nCliente: $nombre\nCedula: $cedula\nEmpresa: $cod\n\n$mensaje****GRACIAS****\n\n\n");
                $printer->feed();
                $printer->cut();
                $printer->pulse();
                $printer->close();
                echo"<script>
                        window.location = '$re?status=5';
                      </script>"; 
        }else{//impresion extra sin impresora
            echo"<script>
                        window.location = '$re?status=5';
                      </script>";
        }
                    }
                    else{
                       echo"<script>
                        window.location = '$re?status=3';
                      </script>"; 
                    }

                
                }
            }else{
                $query4="insert into consumos values(0,'$clienteID',now(),CURTIME(),'$completo','0.00')";
                $enviar4=mysqli_query($db,$query4);
                $query20="select max(id) as ul from consumos";
                $enviar20=mysqli_query($db,$query20);
                $ver20=mysqli_fetch_array($enviar20);
                $ultimo=$ver20['ul'];
                $query21="select * from consumos where id=$ultimo";
                $enviar21=mysqli_query($db,$query21);
                $ver21=mysqli_fetch_array($enviar21);
                $ultimo2=$ver21['fecha'];
                echo"<script>
                        window.location = '$re?status=1';
                      </script>";
                $query20="select * from configuracion where nombre='impresora' and descripcion='si'";
        
        $enviar20=mysqli_query($db,$query20);
        
        $ver20=mysqli_fetch_array($enviar20);
        if ($ver20['id']>0) {
            $nombre_impresora = $ver20['observacion']; 
                $connector = new WindowsPrintConnector($nombre_impresora);
                $printer = new Printer($connector);
                $printer->text("****Gourmet Food Service****\nCliente: $nombre\nCedula: $cedula\nEmpresa: $cod\nFecha: $ultimo2\n\n$completo \n**Extra**\n$mensaje****GRACIAS****\n\n\n");
                $printer->feed();
                $printer->cut();
                $printer->pulse();
                $printer->close(); 
        }
            }
        }
        //echo $query3;


    }else{
        
        echo"<script>
                    window.location = '$re?status=2';
                  </script>";
    }
    //header('location:'.$re); 
}else{
    echo"<script>
                    window.location = '$re?status=6';
                  </script>";
}
?>