<?php
// Se lee el codigo de la imagen creada desde el cookie
$sesion = $_COOKIE['imgcode'];
setcookie("imgcode", ""); // Se limpia el cookie
ob_start();
function crearcookieusr($NombreOperador,$Nivel,$Plantel,$opcodigo){
	setcookie("Usuario",$NombreOperador);
	setcookie("Nivel",$Nivel);	
	setcookie("Plantel",$Plantel);
	setcookie("opcodigo",$opcodigo);	
}

?>
<html>
<head>
<?php
// Encabezado y fondo
require('../config.php');
include('LibEncfondoCSS.php');		
echo	'<script type="text/javascript">'.					
			'function MenuPrincipal()
			{
			   window.parent.location="adiciona.php";
			    	   
			} 		

			function Locat()
			{		
			window.parent.location="passprincipal.php";
			}'.      			
		'</script>';

?>		
	<title>Carga inicial</title>	
</head>
<body>
<?php
		// Chequeo y asignaciòn de las variables del formulario
		$opcodigo = $_POST['opcodigo'];
		$pass = $_POST['pass'];	
		$nombre =  $_POST['nombre'];	
		
	if($nombre == $sesion)
	{		
	    // vector de apoyo 
	    $TablasCuentas = array ( "cuentas", "operador" );
	
		//carga de las variables de configuracion
		//y realizacion de la conexion 
		require('../config.php');
		$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
		if(!$con){
	        die("imposible conectarse: ".mysqli_error($con));
	    }
		 if (@mysqli_connect_errno()) {
	        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
	    }
		// ** Creacion de la tabla cuentas y operador si no existen **
		include('TablasCrear.php');
		// ***
		foreach ($TablasCuentas as $tabla){	
			// generacion de la consulta de seleccion a partir de la variable del formulario de consulta					
			$consulta = "SELECT * FROM `$tabla` WHERE `opcodigo`= '$opcodigo'";			
			// Ejecucion de la consulta
			$resultado = mysqli_query($con,$consulta);				
			// $numero indica el numero de registros obtenidos en la consulta				
			$numero = $resultado->num_rows;		
			if ($numero){$TablaActual= $tabla ;break;}
		}	
			// Comprobacion exiswtencia de algun registro
		if ($numero){			
			// se recupera el registro resultado de un array
			$registro = mysqli_fetch_row($resultado);			
			// obtencion del password real de la bd
			/* if (isset($registro[6])) $passwordreal = $registro[6];	
			if (isset($registro[1])) $NombreOperador = $registro[1];	
			if (isset($registro[5])) $Nivel = $registro[5];	*/
			
			if($TablaActual=="cuentas"){
			if (isset($registro[0])) $opcodigo = $registro[0];	
			if (isset($registro[2])) $passwordreal = $registro[2];	
			if (isset($registro[1])) $NombreOperador = $registro[1];	
			if (isset($registro[3])) $Nivel = $registro[3];
			if (isset($registro[4])) $Plantel = $registro[4];		
			}else{
				if (isset($registro[0])) $opcodigo = $registro[0];	
				if (isset($registro[6])) $passwordreal = $registro[6];	
				if (isset($registro[1])) $NombreOperador = $registro[1];	
				if (isset($registro[5])) $Nivel = $registro[5];
				if (isset($registro[4])) $Plantel = $registro[4];	
			}
			// comprobación de la validez del password
			if ($pass == $passwordreal){ 
					crearcookieusr($NombreOperador,$Nivel,$Plantel,$opcodigo);						 	
					echo '<script>'.'MenuPrincipal()'.'</script>';												
					}
				else {
					// include('PantallaError.php');
					// desplegarpantallaerror("errorclave");	
					echo '<script>'.'Locat()'.'</script>';		
				}						
			}
		else
			{
			// Ningun registro coincide con el numero de cliente
			 //   include('PantallaError.php');
				// desplegarpantallaerror("errorcodigo");
				echo '<script>'.'Locat()'.'</script>';	
			}
			// cierre de la conexiòn
			mysqli_close($con);	
		ob_end_flush();
	}else{
		exit("Acceso Denegado");
	}
?>

</body>
</html>	