<?php
ob_start();
?>
<html>
<head><title>Cierre</title>
		<script type="text/javascript">			
			function MenuClave()
			{
			  window.parent.location="passprincipal.php";				    		   
			} 	
		</script>
</head>

<body bgcolor="#c1c7d4">
<?php
// Se boRran los cokies
	setcookie("Usuario","");
	setcookie("Nivel","");
	setcookie("Plantel","");
	setcookie("opcodigo","");
	echo '<script>'.'MenuClave()'.'</script>';
	ob_end_flush();
?>	
 </body>
 </html>