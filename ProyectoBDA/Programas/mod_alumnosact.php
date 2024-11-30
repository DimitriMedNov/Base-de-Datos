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
if (empty($_POST['Id_Alumno'])){
    $errors[] = "codigo vacío";
} else if (empty($_POST['Nombre'])){
    $errors[] = "Nombres vacíos";
} else if (empty($_POST['Apellido'])){
    $errors[] = "apellido vacía";
} else if (empty($_POST['Rutas'])) {
    $errors[] = "ruta vacío";
} else if (empty($_POST['Numero'])){
        $errors[] = "numero vacío";
} else if (empty($_POST['Id_Pago'])){
    $errors[] = "id pago vacío";
}  else if (
    !empty($_POST['Id_Alumno']) &&
    !empty($_POST['Nombre']) &&
    !empty($_POST['Apellido']) &&
    !empty($_POST['Rutas']) &&
    !empty($_POST['Numero']) &&
    !empty($_POST['Id_Pago'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    $idalumno=$_POST["Id_Alumno"];
    $nombre=mysqli_real_escape_string($con,(strip_tags($_POST["Nombre"],ENT_QUOTES)));
    $apellido=mysqli_real_escape_string($con,(strip_tags($_POST["Apellido"],ENT_QUOTES)));
    $rutas=$_POST["Rutas"];
    $numero=$_POST["Numero"];
    $idpago=$_POST["Id_Pago"];

    $sql="UPDATE alumnoss SET  Nombre='".$nombre."', Apellido='".$apellido."',
		Rutas='".$rutas."', Numero='".$numero."',  Id_Pago='".$idpago."'	WHERE Id_Alumno='".$idalumno."'";

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