<?php
/*-----------------------
Curso de bases de datos
Version de PHP: 5.6.3
----------------------------*/
# conectare la base de datos
require('../config.php');
$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
if(!$con){
    die("imposible conectarse: ".mysqli_error($con));
}
if (@mysqli_connect_errno()) {
    die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
}
/*Inicia validacion del lado del servidor*/
if (empty($_POST['Id_Pago'])){
    $errors[] = "codigo vacío";
} else if (empty($_POST['Fecha_Pago'])){
    $errors[] = "Nombres vacíos";
} else if (empty($_POST['Metodo_Pago'])){
    $errors[] = "clave vacía";
} else if (empty($_POST['Adeudo'])){
    $errors[] = "Nivel vacío";
}  else if (
    !empty($_POST['Id_Pago']) &&
    !empty($_POST['Fecha_Pago']) &&
    !empty($_POST['Metodo_Pago']) &&
    !empty($_POST['Adeudo'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    $Id_Pago=$_POST["Id_Pago"];
    $Fecha_Pago=mysqli_real_escape_string($con,(strip_tags($_POST["Fecha_Pago"],ENT_QUOTES)));
    $Metodo_Pago=mysqli_real_escape_string($con,(strip_tags($_POST["Metodo_Pago"],ENT_QUOTES)));
    $Adeudo=$_POST["Adeudo"];

    $sql="UPDATE pagos SET  Fecha_Pago='".$Fecha_Pago."', Metodo_Pago='".$Metodo_Pago."',
		Adeudo='".$Adeudo."	' WHERE id_conductor='".$Id_Pago."'";

    $query_update = mysqli_query($con,$sql);
    if ($query_update){
        $messages[] = "Los datos han sido actualizados satisfactoriamente.";
    } else{
        $errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);
    }
} else {
    $errors []= "Error desconocido.";
}

if (isset($errors)){

    ?>
    <div class="alert alert-danger" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Error!</strong>
        <?php
        foreach ($errors as $error) {
            echo $error;
        }
        ?>
    </div>
    <?php
}
if (isset($messages)){

    ?>
    <div class="alert alert-success" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>¡Bien hecho!</strong>
        <?php
        foreach ($messages as $message) {
            echo $message;
        }
        ?>
    </div>
    <?php
}

?>