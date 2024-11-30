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
	$nombre='Teléfono: (999) 942 4800 con 5 líneas Carr | Mérida Progreso Km. 15.5 AP | Mérida, Yucatán, México.';
	}
	return $nombre;
}
?>	
 </body>
 </html>