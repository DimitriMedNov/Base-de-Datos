<?php

	# conectare la base de datos
	
		// Encabezado y fondo
	require('../config.php');	
	$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
	if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
	 if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
		// ** bien importante para que salgan la ñ y caraceres propios del español
		// mysql_query("SET NAMES 'utf8'");    
 	/*Inicia validacion del lado del servidor*/
	 if (empty($_POST['opcodigo'])){
			$errors[] = "Código vacío";
		} else if (empty($_POST['opnombre'])){
			$errors[] = "Nombre vacío";
		} else if (empty($_POST['clave'])){
			$errors[] = "Clave vacío";
		} else if (empty($_POST['nivel'])){
			$errors[] = "Nivel vacío";
		} else if (empty($_POST['codigoplantel'])){
			$errors[] = "Código sucursal vacío";
		} else if (
			!empty($_POST['opcodigo']) && 
			!empty($_POST['opnombre']) &&
			!empty($_POST['clave']) &&
			!empty($_POST['nivel']) &&
			!empty($_POST['codigoplantel']) 			
		){

		// escaping, additionally removing everything that could be (html/javascript-)
		/* Cambiar aqui por los campos de tu table */
		$opcodigo =	$_POST["opcodigo"];	
		$nivel = $_POST["nivel"];
		$opnombre=mysqli_real_escape_string($con,(strip_tags($_POST["opnombre"],ENT_QUOTES)));
		$clave=mysqli_real_escape_string($con,(strip_tags($_POST["clave"],ENT_QUOTES)));		
		$codigoplantel=mysqli_real_escape_string($con,(strip_tags($_POST["codigoplantel"],ENT_QUOTES)));		
		
		//y realizacion de la conexion, actualizar de acuerdo a tus campos

		$sql="INSERT INTO cuentas (opcodigo, opnombre, clave, Nivel, CodigoPlantel) VALUES ('".$opcodigo."','".$opnombre."','".$clave."', '".$nivel."','".$codigoplantel."')";

		$query_update = mysqli_query($con,$sql);		   
			if ($query_update){
				$messages[] = "Los datos han sido guardados satisfactoriamente.";
			} else{
				$errors []= "Lo siento .".mysqli_error($con);
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