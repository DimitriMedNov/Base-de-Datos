<html>
<head><title>Usuarios</title>

</head>

<body>
<?php
require('../config.php');
function clave(){
// if($_COOKIE['Usuario']!=""){ marca error en las versiones nuevas msqli
if(!empty($_COOKIE['Usuario'])){
   $nombre='Usted se ha autenticado como: '.$_COOKIE['Usuario'].
			   '<a href="cierre.php">'.
			   '<font size=3 color=red>'.
				  	' (Salir)'.
			  	'</font>'.
				  	'</a>';	
	}
else{	
	$nombre='Bienvendio al sistema de fichas, favor de registrarse';
	}
	return $nombre;
}
?>	
 </body>
 </html>