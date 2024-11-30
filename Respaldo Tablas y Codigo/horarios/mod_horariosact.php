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
if (empty($_POST['Id_Horario'])){
    $errors[] = "codigo vacío";
} else if (empty($_POST['Inicio_Turno'])){
    $errors[] = "Nombres vacíos";
} else if (empty($_POST['Final_Turno'])){
    $errors[] = "clave vacía";
}  else if (
    !empty($_POST['Id_Horario']) &&
    !empty($_POST['Inicio_Turno']) &&
    !empty($_POST['Final_Turno'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    $Id_Horario=$_POST["Id_Horario"];
    $Inicio_Turno = $_POST["Inicio_Turno"];
    $Final_Turno = $_POST["Final_Turno"];

    $sql="UPDATE horarios SET  Inicio_Turno='".$Inicio_Turno."', Final_Turno='".$Final_Turno."' WHERE Id_Horario='".$Id_Horario."'";

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