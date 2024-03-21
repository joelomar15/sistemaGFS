<?php
require('fpdf/fpdf.php');
session_start();
//$id=$_REQUEST['id'];
include "conexion.php";
require 'phpmailer/class.phpmailer.php';
$query="SELECT * FROM clientes c JOIN productos p JOIN productos_vendidos pv JOIN ventas v where v.id='4' and pv.id_producto=p.id and pv.id_venta=v.id and v.id_cliente=c.id";
    $datos=mysqli_query($db,$query);
    $numero_de_ventas = mysqli_num_rows($datos);
//Initialize the 3 columns and the total
$column_code = "";
$column_name = "";
$column_price = "";
$total = 0;

//For each row, add the field to the corresponding column
while($row = mysqli_fetch_array($datos))
{
    $code = $row["cantidad"];
    $name = $row["descripcion"];
    $real_price = $row["precioVenta"];
    $price_to_show = number_format($row["precioVenta"],2);

    $column_code = $column_code.$code."\n";
    $column_name = $column_name.$name."\n";
    $column_price = $column_price.$price_to_show."\n";

    //Sum all the Prices (TOTAL)
    $total = $total+($real_price*$code);
    $nombre=$row["nombre"];;
    $cedula=$row["cedula"];;
    $telefono="";
    $direccion=$row["correo"];;

}
//mysqli_close();

//Convert the Total Price to a number with (.) for thousands, and (,) for decimals.
$total = number_format($total,2);

//Create a new PDF file
$pdf=new FPDF();
$pdf->AddPage();
$pdf->Image('img/logo2.png',10,6,40,30,"PNG");
$pdf->Image('img/logo2.png',170,6,40,30,"PNG");
$pdf->SetFont('Arial','B',14);
$pdf->Cell(190,16,'Gourmet Food Service',0,1,'C');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(38,10,'',0,0,'L');
$pdf->Cell(20,10,utf8_decode('Dirección:'),0,0,'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(55,10,utf8_decode('Miguel Carrion y Juan Procel'),0,0,'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(20,10,utf8_decode('Teléfono:'),0,0,'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(55,10,utf8_decode('0998671707'),0,1,'L');
$pdf->SetFont('Arial','B',9);
$pdf->Cell(15,10,utf8_decode('Cliente:'),0,0,'L');
$pdf->SetFont('Arial','',9);
$pdf->Cell(60,10,utf8_decode($nombre),0,0,'L');
$pdf->SetFont('Arial','B',9);
$pdf->Cell(15,10,utf8_decode('Cédula:'),0,0,'L');
$pdf->SetFont('Arial','',9);
$pdf->Cell(24,10,utf8_decode($cedula),0,0,'L');
$pdf->SetFont('Arial','B',9);
$pdf->Cell(15,10,utf8_decode('Correo:'),0,0,'L');
$pdf->SetFont('Arial','',9);
$pdf->Cell(70,10,utf8_decode($direccion),0,0,'L');
//Fields Name position
$Y_Fields_Name_position = 49;
//Table position, under Fields Name
$Y_Table_Position = 55;

//First create each Field Name
//Gray color filling each Field Name box
$pdf->SetFillColor(111,137,117,255);
//Bold Font for Field Name
$pdf->SetFont('Arial','B',10);
$pdf->SetY($Y_Fields_Name_position);
$pdf->SetX(25);
$pdf->Cell(20,6,'CANTIDAD',0,0,'L',1);
$pdf->SetX(45);
$pdf->Cell(120,6,'PRODUCTO',0,0,'C',1);
$pdf->SetX(135);
$pdf->Cell(40,6,'PRECIO UNITARIO',0,0,'C',1);
$pdf->Ln();

//Now show the 3 columns
$pdf->SetFont('Arial','',8);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(25);
$pdf->MultiCell(20,6,$column_code,0,"C");
$pdf->SetY($Y_Table_Position);
$pdf->SetX(45);
$pdf->MultiCell(120,6,$column_name,0);
$pdf->SetY($Y_Table_Position);
$pdf->SetX(135);
$pdf->MultiCell(40,6,$column_price,0,'C');
$pdf->SetX(135);
$pdf->SetFont('Arial','B',10);
$pdf->MultiCell(40,6,'TOTAL: $ '.$total,0,'L');

//Create lines (boxes) for each ROW (Product)
//If you don't use the following code, you don't create the lines separating each row
$i = 0;
$pdf->SetY($Y_Table_Position);
while ($i < $numero_de_ventas)
{
    $pdf->SetX(45);
    $pdf->MultiCell(120,6,'',0);
    $i = $i +1;
}

//$pdf->Output();
$doc=$pdf->Output('','S');
    $mail = new PHPMailer();
        $mail->From = 'reservas@grupodelhierro.com';
        $mail->FromName = 'Gourmet Food Service';
        $mail->Subject = 'Gourmet Food Service';
        $mail->Body = '
        Buen dia estimado Cliente '.$nombre.' 
            Se adjunta el comprobante en pdf
            de la compra realizada.
        ';
        $mail->AddAddress('ventasgfs2023@gmail.com');
        $mail->AddAddress('soporte@grupodelhierro.com');
        //$mail->AddAddress($row1['cliCorreo2']);

        // definiendo el adjunto
        $mail->AddStringAttachment($doc, 'reciboGFS.pdf', 'base64', 'application/pdf');
        // enviando
        //$mail->Send();
       	$mail->IsSMTP(); 
			$mail->Host = "p3plcpnl0565.prod.phx3.secureserver.net"; //Servidor de Salida.
			$mail->SMTPAuth = true; 
			$mail->Username = "reservas@grupodelhierro.com"; //Correo Electrnico
			$mail->Password = "Qwerty1.6"; //Contrasea
			$mail->SMTPSecure = "ssl";
			$mail->Port = 465;
            
            if ($mail->Send())
                echo "<script>alert('Correo enviado exitosamente.');
                window.location ='ventas.php';</script>";
            else
                echo "<script>alert('Error al enviar el Correo');</script>";
?>