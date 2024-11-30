<?php
/*-----------------------
Curso de Bases de datos avanzadas
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
    $errors[] = "Placas vacias";
}   else if (
    !empty($_POST['Placas'])

){

    // escaping, additionally removing everything that could be (html/javascript-) code
    // $matricula=intval($_POST['id_pais']);

    $Placas=mysqli_real_escape_string($con,(strip_tags($_POST["Placas"],ENT_QUOTES)));
    $sql="DELETE FROM autobuses WHERE Placas='".$Placas."'";
    $query_delete = mysqli_query($con,$sql);
    if ($query_delete){
        $messages[] = "Los datos han sido eliminados satisfactoriamente.";
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
