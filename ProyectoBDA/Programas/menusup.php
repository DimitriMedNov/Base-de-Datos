<?php
echo '<div class="container-fluid">'.
		'<div class="row">'.
			'<div class="col-xs-6 col-sm-8 col-md-12 col-lg-12">'.
				'<ul class="nav nav-tabs">'.					

					'<li role="presentation" class="dropdown active">'.
						'<a href="#" class="dropdown-toggle" data-toggle="dropdown">'.
							'Tablas <span class="caret"></span>'.
						'</a>'.
						'<ul class="dropdown-menu">'.
							'<li role="presentation"><a href="cuenveredit.php">Cuentas</a></li>'.
                            '<li role="presentation"><a href="alumnosveredit.php">Alumnos</a></li>'.
                            '<li role="presentation"><a href="autobusesveredit.php">Autobuses</a></li>'.
                            '<li role="presentation"><a href="conductoresveredit.php">Conductores</a></li>'.
                            '<li role="presentation"><a href="direccionesveredit.php">Direcciones</a></li>'.
                            '<li role="presentation"><a href="horariosveredit.php">Horarios</a></li>'.
                            '<li role="presentation"><a href="pagosveredit.php">Pagos</a></li>'.
                            '<li role="presentation"><a href="rutasveredit.php">Rutas</a></li>'.
						'</ul>'.
					'</li>'.					

					'<li role="presentation" class="dropdown">'.
						'<a href="#" class="dropdown-toggle" data-toggle="dropdown">'.
							'Consultas <span class="caret"></span>'.
						'</a>'.
						'<ul class="dropdown-menu">'.
							'<li role="presentation"><a href="Consulta_1.php">Rutas con entre 25 y 30 pasajeros</a></li>'.
							'<li role="presentation"><a href="Consulta_2.php">Consulta</a></li>'.
						'</ul>'.
					'</li>'.
				'</ul>'.
			'</div>'.
		'</div>'.
	'</div>';
?>