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
if (empty($_POST['id_conductor'])){
    $errors[] = "codigo vacío";
} else if (empty($_POST['Nombre'])){
    $errors[] = "Nombres vacíos";
} else if (empty($_POST['Apellido'])){
    $errors[] = "clave vacía";
} else if (empty($_POST['licencia'])){
    $errors[] = "Nivel vacío";
} else if (empty($_POST['sueldo'])){
    $errors[] = "Sucursal vacío";
}  else if (
    !empty($_POST['id_conductor']) &&
    !empty($_POST['Nombre']) &&
    !empty($_POST['Apellido']) &&
    !empty($_POST['licencia']) &&
    !empty($_POST['sueldo'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    $id_conductor=$_POST["id_conductor"];
    $Nombre=mysqli_real_escape_string($con,(strip_tags($_POST["Nombre"],ENT_QUOTES)));
    $Apellido=mysqli_real_escape_string($con,(strip_tags($_POST["Apellido"],ENT_QUOTES)));
    $sueldo=$_POST["sueldo"];
    $licencia=mysqli_real_escape_string($con,(strip_tags($_POST["licencia"],ENT_QUOTES)));
    $sql="UPDATE conductores SET  Nombre='".$Nombre."', Apellido='".$Apellido."',
		sueldo='".$sueldo."', licencia='".$licencia."'	WHERE id_conductor='".$id_conductor."'";

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