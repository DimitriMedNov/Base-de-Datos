<?php
require('../config.php');
$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
		if(!$con){
	        die("imposible conectarse: ".mysqli_error($con));
	    }
		 if (@mysqli_connect_errno()) {
	        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
	    }

/* Creamos la tabla cuentas */

/* Base de datos: `conalepm_equipo9` */

/* Estructura de tabla para la tabla `cuentas` */
		$sql= "CREATE TABLE IF NOT EXISTS cuentas (
		  opcodigo smallint(3) UNSIGNED NOT NULL,
		  opnombre varchar(50) COLLATE utf8_spanish_ci NOT NULL,
		  clave char(7) COLLATE utf8_spanish_ci NOT NULL,
		  Nivel tinyint(1) UNSIGNED NOT NULL,
		  CodigoPlantel char(20) COLLATE utf8_spanish_ci NOT NULL
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci";

		$resultado = mysqli_query($con,$sql);
		/*Volcado de datos para la tabla `cuentas`*/

		if($resultado){
		$ins= "INSERT INTO cuentas (`opcodigo`, `opnombre`, `clave`, `Nivel`, `CodigoPlantel`) VALUES
		(777, 'Administrador equipo9', 'anahuac', 1, '123')";
		mysqli_query($con,$ins);
		}

		/* Índices para tablas volcadas */

		/* Indices de la tabla `cuentas` */

		$llaveprimaria = "ALTER TABLE cuentas ADD PRIMARY KEY (`opcodigo`)";

		mysqli_query($con,$llaveprimaria);

/*Estructura de la tabla operador */
	 $sql2="CREATE TABLE IF NOT EXISTS operador(
	  `opcodigo` smallint(3) UNSIGNED NOT NULL,
	  `opnombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
	  `opdomicilio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
	  `optelefonos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
	  `CodigoPlantel` char(20) COLLATE utf8_spanish_ci NOT NULL,
	  `Nivel` tinyint(1) UNSIGNED NOT NULL,
	  `clave` char(10) COLLATE utf8_spanish_ci NOT NULL,
	  `notas` longtext COLLATE utf8_spanish_ci NOT NULL
       ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci";

	   mysqli_query($con,$sql2);
	   $key = "ALTER TABLE operador
			  ADD PRIMARY KEY (`opcodigo`),
			  ADD KEY `opcodigo` (`opcodigo`),
			  ADD KEY `CodigoPlantel` (`CodigoPlantel`),
			  ADD KEY `Nivel` (`Nivel`)";
	   mysqli_query($con,$key);
?>