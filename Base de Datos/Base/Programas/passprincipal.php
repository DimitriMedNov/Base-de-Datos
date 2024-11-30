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
						<CENTER><FONT SIZE="15" COLOR="#ffffff">Mayabus</FONT></center><br>
						<center><img src="../Botones/AnahuacLogoMayabus.png" hight="435" width="291" border="2"></center>
						<?php
						echo '<FORM ACTION="'.$CFG->wwwroot.'/Programas/cargainicial.php" METHOD="POST" class="form-horizontal">';
						?>

									<center><font size="2+" color="#ffffff"> Escriba su correo institucional<br>pare poder entrar al sistema<br></font></center>
									
									<row>
										<div class="form-group  has-success">													 
											
											<label for="opcodigo" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Correo</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="text" class="form-control input-sm" name="opcodigo" placeholder="Codigo">
											</div>
										</div>
									</row>

									<row>
										<div class="form-group  has-success ">													 
											<!-- <font size="2" color="#006b54">Codigo:</font> -->
											<label for="pass" class="control-label col-xs-2 col-sm-2 col-md-2 col-lg-2 col-xs-offset-3">Contraseña</label>
											<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
												<INPUT TYPE="password" class="form-control input-sm" name="pass" placeholder="Password">
											</div>
										</div>
									</row>
									<!-- Adicionar este codigo para captcha -->
									<row>
										<div class="form-group  has-success ">
												<center><div class="g-recaptcha" data-sitekey="6LdG7CcUAAAAAJDdi5iruvSJ_e_M251gjMxPHZ0R"></div></center>
										</div>
									</row>
									<!-- fin de codigo captcha -->
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