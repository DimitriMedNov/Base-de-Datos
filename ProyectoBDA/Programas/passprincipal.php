<HTML>
<head>
    <title>Mayabus | Anahuac Mayab</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../ArchivosCSS/style.css">
<?php
// Encabezado y fondo
require('../config.php');
include('LibEncfondoCSS.php');	
?>		
 	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>	
<?php 
	 
?>   
<BR>        
<br>

    <img src="../Logotipos/LeonelDerecha.gif" hight="300" width="300" id="leonel" border="0">
    <img src="../Logotipos/AnahuacIzquierda.gif" hight="200 width="200" id="logo" border="0">
	<div class="container-fluid">

						<br>
						<br>
						<CENTER><FONT SIZE="15" COLOR="#000000">Mayabus</FONT></center><br>
						<center><img src="../Botones/AnahuacLogoMayabus.gif" hight="250" width="270" border="0"></center>
						<?php
						echo '<FORM ACTION="'.$CFG->wwwroot.'/Programas/cargainicial.php" METHOD="POST" class="form-horizontal">';
						?>

									<center><font size="4" color="#000000"> Escriba su ID y contraseña<br> para poder entrar al sistema<br></font></center>
									
									<row>
										<div class="form-group  has-success">
											
											<label for="opcodigo" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">ID</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="text" class="form-control input-sm" name="opcodigo" placeholder="ID">
											</div>
										</div>
									</row>

									<row>
										<div class="form-group  has-success ">													 
											<!-- <font size="2" color="#006b54">Codigo:</font> -->
											<label for="pass" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Contraseña</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="password" class="form-control input-sm" name="pass" placeholder="Contraseña">
											</div>
										</div>
									</row>
									<!-- Adicionar este codigo para captcha -->
									<row>
										<div class="form-group  has-success">													 
											
											<label for="nombre" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Captcha</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="text" class="form-control input-sm" name="nombre" placeholder="Captcha">
											</div>
										</div>
									</row>
									<!-- fin de codigo captcha -->
									<row>
										<div class="form-group  has-success ">
											<!-- imagen.php  crea una imagen con 5 digitos -->
											<center> <img src="imagen.php" border="0" /> </center>	
										</div>
									</row>  
									<row>
										<div class="form-group">
											<div >
												<center><button class="btn btn-primary">Enviar</button></center>
											</div>
										</div>														
									</row>
						</form>		
			
		
	</div>
		<script src="js/jquery.js"></script>
    	<script src="js/bootstrap.min.js"></script>
	</body>
</html>