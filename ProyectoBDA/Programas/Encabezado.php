<html>
<head><title>Mayabus | Anahuac Mayab</title>
<?php
	require('../config.php');
	echo '<style type="text/css">'.	
					'@import url('.$CFG->wwwroot.'/ArchivosCSS/fondo.css);'.	
					'@import url('.$CFG->wwwroot.'/ArchivosCSS/Enclineas.css);'.		
			'</style>';	?>

</head>

<body>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <?php
	include('Registro.php');
	     
				$nombreuser=clave();
			
		    echo   '<div id="block2">'.     
	              '<div class="date-stamp">'. 
	              '<div>'.'<IMG SRC="'.$CFG->wwwroot.'/Logotipos/anahuac.png">'.'</div>'.'</div>'.	         
	              '<h2>'."Bienvenido al servicio de transporte de la Universidad Anáhuac en Mérida".'</h2>'.
					  '<p class="details">'.'<span class="type">'.$nombreuser.'</p>'.'</div>';  
	?>
</div>

 </body>
 </html>