<HTML>
<head>
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
	include('Encabezado.php');  
?>   
<BR>    
<br>

	<div class="container-fluid">
		
			
						<br>
						<br>
						<CENTER><FONT SIZE="4" COLOR="#006b54">Bienvenido al Sistema WEB</FONT></center>
						<CENTER><FONT SIZE="6" COLOR="#006b54">Fichas</FONT></center><br>
						<center><img src="../Botones/clave.png" hight="80" width="60" border="0"></center>
						<?php
						echo '<FORM ACTION="'.$CFG->wwwroot.'/Programas/cargainicial.php" METHOD="POST" class="form-horizontal">';
						?>

									<center><font size="3" color="#006b54">Usuarios registrados<br></font>
									<font size="2+" color="#006b54"> Entre aqui su codigo de operador<br> y clave <br></font></center>
									
									<row>
										<div class="form-group  has-success">													 
											
											<label for="opcodigo" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Codigo</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="text" class="form-control input-sm" name="opcodigo" placeholder="Codigo">
											</div>
										</div>
									</row>

									<row>
										<div class="form-group  has-success ">													 
											<!-- <font size="2" color="#006b54">Codigo:</font> -->
											<label for="pass" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Clave</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="password" class="form-control input-sm" name="pass" placeholder="Password">
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