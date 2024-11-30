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
if (empty($_POST['Placas'])){
    $errors[] = "Placa vacia";
} else if (empty($_POST['Marca'])){
    $errors[] = "Nombre de marca vacio";
} else if (empty($_POST['Modelo'])){
    $errors[] = "Modelo vacio";
} else if (empty($_POST['Capacidad'])){
    $errors[] = "Capacidad vacia";
}  else if (
    !empty($_POST['Placas']) &&
    !empty($_POST['Marca']) &&
    !empty($_POST['Modelo']) &&
    !empty($_POST['Capacidad'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    $Placas=mysqli_real_escape_string($con,(strip_tags($_POST["Placas"],ENT_QUOTES)));
    $Marca=mysqli_real_escape_string($con,(strip_tags($_POST["Marca"],ENT_QUOTES)));
    $Modelo=mysqli_real_escape_string($con,(strip_tags($_POST["Modelo"],ENT_QUOTES)));
    $Capacidad=$_POST["Capacidad"];
    $sql="UPDATE autobuses SET  Marca='".$Marca."', Modelo='".$Modelo."',
		Capacidad='".$Capacidad."' WHERE Placas='".$Placas."'";

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
