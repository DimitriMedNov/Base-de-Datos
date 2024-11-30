<?php

# conectare la base de datos

// Encabezado y fondo
require('../config.php');
$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
if(!$con){
    die("imposible conectarse: ".mysqli_error($con));
}
if (@mysqli_connect_errno()) {
    die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
}
// ** bien importante para que salgan la ñ y caraceres propios del español
// mysql_query("SET NAMES 'utf8'");
/*Inicia validacion del lado del servidor*/
if (empty($_POST['Id_Horario'])){
    $errors[] = "Código vacío";
} else if (empty($_POST['Inicio_Turno'])){
    $errors[] = "Nombre vacío";
} else if (empty($_POST['Final_Turno'])){
    $errors[] = "Nivel vacío";
} else if (
    !empty($_POST['Id_Horario']) &&
    !empty($_POST['Inicio_Turno']) &&
    !empty($_POST['Final_Turno'])
){

    // escaping, additionally removing everything that could be (html/javascript-)
    /* Cambiar aqui por los campos de tu table */
    $Id_Horario =	$_POST["Id_Horario"];
    $Inicio_Turno = $_POST["Inicio_Turno"];
    $Final_Turno = $_POST["Final_Turno"];

    //y realizacion de la conexion, actualizar de acuerdo a tus campos

    $sql="INSERT INTO horarios (Id_Horario, Inicio_Turno, Final_Turno) VALUES ('".$Id_Horario."','".$Inicio_Turno."','".$Final_Turno."')";

    $query_update = mysqli_query($con,$sql);
    if ($query_update){
        $messages[] = "Los datos han sido guardados satisfactoriamente.";
    } else{
        $errors []= "Lo siento .".mysqli_error($con);
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