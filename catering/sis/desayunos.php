<?php
    include ('conexion.php');
    include ('cabecera.php');
?>


<body>
      <center>
    <main style="background-image:url(https://thumbs.dreamstime.com/b/fondo-negro-de-cocina-con-especias-y-plato-vista-superior-espacio-libre-para-el-texto-estilo-r%C3%BAstico-183926482.jpg);background-size: 100% 100%;">
        <b><h1 style="background-color: white;color:#156f15;">Consumo Desayunos</h1></b>
        <br>
        <form id="login_form" class="form_class" action="guardad.php?tipo=D" method="post">

            <div class="form_div">
                <label>Cedula:</label>
                <input class="field_class" name="cedula" id="cedula" type="text" placeholder="Cedula" autofocus required>
                <button class="submit_class" type="submit" form="login_form">Consumir</button>
            </div>
            <div class="info_div">
                <?php
                    $query="select * from consumos where fecha=CURDATE() and tipo='Desayuno'";
                    $enviar=mysqli_query($db,$query);
                    $ver=mysqli_num_rows($enviar);
                    echo "Consumos Hoy: ".$ver;
                ?>
            </div>
        </form>
    </main>
    </center>
    
</body>
