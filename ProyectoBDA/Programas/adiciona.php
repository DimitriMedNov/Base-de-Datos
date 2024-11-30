 

<!doctype html>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />

	<title>Mayabus | Anahuac Mayab</title>

	<script language='javascript' src="popcalendar.js" > </script>

	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <link rel="stylesheet" href="css/bootstrap.min.css">

     <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  

    <?php

		// Encabezado y fondo

		require('../config.php');

		include('LibEncfondoCSS.php');			

	?>	

	<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />

</head>

<body>

 <?php 

	include('Encabezado.php');  

	include('menusup.php');

    require('../config.php');

    

	$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);

	if(!$con){

        die("imposible conectarse: ".mysqli_error($con));

    }

	 if (@mysqli_connect_errno()) {

        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());

    }   	

     mysqli_set_charset($con, "utf8");   

 ?>  
 	
	<row>
		<center><img src="../Botones/Presentation.png"></center>
	</row>


// Algunos scrip de uso frecuente 
	<script src="js/jquery.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/moment.min.js"></script>

   
</body>