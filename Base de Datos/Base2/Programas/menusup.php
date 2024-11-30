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
							'<li role="presentation"><a href="operveredit.php">Operador</a></li>'.
						'</ul>'.
					'</li>'.					

					'<li role="presentation" class="dropdown">'.
						'<a href="#" class="dropdown-toggle" data-toggle="dropdown">'.
							'Herramientas <span class="caret"></span>'.
						'</a>'.
						'<ul class="dropdown-menu">'.
							'<li role="presentation"><a href="#">Reindexación </a></li>'.
							'<li role="presentation"><a href="#">Respaldar Tablas</a></li>'.
						'</ul>'.
					'</li>'.
				'</ul>'.
			'</div>'.
		'</div>'.
	'</div>';
?>