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
	if (empty($_POST['opcodigo'])){
			$errors[] = "codigo vacío";
		} else if (empty($_POST['opnombre'])){
			$errors[] = "Nombres vacíos";
		} else if (empty($_POST['clave'])){
			$errors[] = "clave vacía";
		} else if (empty($_POST['nivel'])){
			$errors[] = "Nivel vacío";
		} else if (empty($_POST['codigoplantel'])){
			$errors[] = "Sucursal vacío";
		}  else if (
			!empty($_POST['opcodigo']) && 
			!empty($_POST['opnombre']) &&
			!empty($_POST['clave']) &&
			!empty($_POST['nivel']) &&
			!empty($_POST['codigoplantel']) 
			
		){

		// escaping, additionally removing everything that could be (html/javascript-) code
		$opcodigo=$_POST["opcodigo"];
		$opnombre=mysqli_real_escape_string($con,(strip_tags($_POST["opnombre"],ENT_QUOTES)));
		$clave=mysqli_real_escape_string($con,(strip_tags($_POST["clave"],ENT_QUOTES)));
		$nivel=$_POST["nivel"];
		$codigoplantel=mysqli_real_escape_string($con,(strip_tags($_POST["codigoplantel"],ENT_QUOTES)));		
		$sql="UPDATE cuentas SET  opnombre='".$opnombre."', clave='".$clave."',
		Nivel='".$nivel."', CodigoPlantel='".$codigoplantel."'	WHERE opcodigo='".$opcodigo."'";

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