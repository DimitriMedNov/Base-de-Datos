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
if (empty($_POST['id_conductor'])){
    $errors[] = "Código vacío";
} else if (empty($_POST['Nombre'])){
    $errors[] = "Nombre vacío";
} else if (empty($_POST['Apellido'])){
    $errors[] = "Clave vacío";
} else if (empty($_POST['licencia'])){
    $errors[] = "Nivel vacío";
} else if (empty($_POST['sueldo'])){
    $errors[] = "Código sucursal vacío";
} else if (
    !empty($_POST['id_conductor']) &&
    !empty($_POST['Nombre']) &&
    !empty($_POST['Apellido']) &&
    !empty($_POST['licencia']) &&
    !empty($_POST['sueldo'])
){

    // escaping, additionally removing everything that could be (html/javascript-)
    /* Cambiar aqui por los campos de tu table */
    $id_condutor =	$_POST["id_conductor"];
    $sueldo = $_POST["sueldo"];
    $Nombre=mysqli_real_escape_string($con,(strip_tags($_POST["Nombre"],ENT_QUOTES)));
    $Apellido=mysqli_real_escape_string($con,(strip_tags($_POST["Apellido"],ENT_QUOTES)));
    $licencia=mysqli_real_escape_string($con,(strip_tags($_POST["licencia"],ENT_QUOTES)));

    //y realizacion de la conexion, actualizar de acuerdo a tus campos

    $sql="INSERT INTO conductores (id_conductor, Nombre, Apellido, licencia, sueldo) VALUES ('".$id_condutor."','".$Nombre."','".$Apellido."', '".$licencia."','".$sueldo."')";

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