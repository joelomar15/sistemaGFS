<?php
include('cabecera.php');
 require __DIR__ . '/imprimir/autoload.php'; //Nota: si renombraste la carpeta a algo diferente de "ticket" cambia el nombre en esta línea
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
    include ('conexion.php');
    if (isset($_GET['enviar'])) {
      $producidos=$_REQUEST['producidos'];
      $consumos=$_REQUEST['consumos'];
      $sobrantes=$_REQUEST['sobrantes'];
      $query20="select * from configuracion where nombre='impresora' and descripcion='si'";
      $enviar20=mysqli_query($db,$query20);
      $ver20=mysqli_fetch_array($enviar20);
      $query50="SELECT DATE(NOW()) AS fecha, CURTIME() AS hora;";
      $enviar50=mysqli_query($db,$query50);
      $ver50=mysqli_fetch_array($enviar50);
      $nombre_impresora = $ver20['observacion']; 
      $fecha= $ver50['fecha']; 
      $hora= $ver50['hora']; 
                $connector = new WindowsPrintConnector($nombre_impresora);
                $printer = new Printer($connector);
                $printer->text("        ****Gourmet Food Service****\n         ****Tirilla de Consumos****\n\n            $fecha - $hora   \n\nComedor: Aneffi\n\nProducidos: $producidos\n\nConsumos: $consumos\n\nSobrantes: $sobrantes\n\n\n\n\n              --------------------\n                Firma Responsable\n\nNombre Responsable:\n\n\n\n                ****GRACIAS****");
                $printer->feed();
                $printer->cut();
                $printer->pulse();
                $printer->close();
        header('location:tirilla.php');
        
    }
    $query="select * from consumos where fecha=curdate()";
    $enviar=mysqli_query($db,$query);
    $consumos=mysqli_num_rows($enviar);
    $query5="select * from extras where fecha=curdate() and descripcion='Almuero Extra'";
    $enviar5=mysqli_query($db,$query5);
    $consumosextras=mysqli_num_rows($enviar5);
?>
<script type="text/javascript" src="este.js"></script> 
<script>
  function sobra(){
    var c= document.getElementById("consumos").value;
    var p= document.getElementById("producidos").value;
    var s= p-c;
    document.formulario.sobrantes.value=s;
    
  }
</script> 

<body>
    

      <center>
    <main>
        <b><h1 style="background-color: white;color:#156f15;">Tirilla de Consumos</h1></b>
        <br>
        <form id="login_form" name="formulario" class="form_class" method="get">

            <div class="form_div">
                <label>Consumos:</label>
                <input class="field_class" name="consumos" id="consumos" type="number" required readonly="" value="<?php echo $consumos+$consumosextras ?>">
                <label>Producidos:</label>
                <input class="field_class" name="producidos" id="producidos" type="number" required onchange="sobra()">
                <label>Sobrantes:</label>
                <input class="field_class" name="sobrantes" id="sobrantes" type="number" requiered readonly="">
                <button class="submit_class" name="enviar" type="submit">Imprimir</button>
                
            </div>
        </form>
        
    </main>
    </center>
   
</body>
<br><br>