<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"> -->
    <!-- <meta charset="UTF-8"> -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Adeudos de forma descendiente</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>
<body>
<?php
include('Encabezado.php');
include('menusup.php');
?>
<div class="container-fluid">	 <!-- se adapta al ancho del navegador -->
    <ol class="breadcrumb"> <!-- clase ruta - migajas de pan <ol>listas o viñetas ordenada-->
        <li><a href="#">Adeudos de forma descendiente</a></li>
        <li class="active">Ver Consulta</li>
    </ol>
    <div class='col-xs-6'>	<!-- para dispositivos moviles, ocupa la mitad de la pantalla -->
        <h3>Adeudos de forma descendiente</h3>
    </div>
    <div class='col-xs-6'>
        <h3 class='text-right'>		<!-- boton a la derecha +Agregar -->
            <!-- class="btn btn-default -->
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#dataRegister"><i class='glyphicon glyphicon-plus'></i> Agregar Nuevo Usuario</button>
        </h3>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <div id="loader" class="text-center"> <img src="loader.gif"></div>
            <div class="datos_ajax_delete"></div><!-- Datos ajax Final -->
            <div class="outer_div"></div><!-- Datos ajax Final -->
        </div>
    </div>
</div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/consulta2.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<!-- Latest compiled and minified JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> -->
<script src="js/consulta2.js"></script>
<script>
    $(document).ready(function(){
        load(1);
    });
</script>
</body>
</html>