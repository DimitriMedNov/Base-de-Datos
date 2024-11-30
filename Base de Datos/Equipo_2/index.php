<?php
		//Se pone la fecha
			// Establecemos zona horaria
			if( ! ini_get('date.timezone') )
			{
			    date_default_timezone_set('GMT');
			}
		// echo '<script>'.'Pantallainicial()'.'</script>'; //			
		require('config.php');	
		header('Location:'.$CFG->wwwroot.'/Programas/passprincipal.php');
?>
