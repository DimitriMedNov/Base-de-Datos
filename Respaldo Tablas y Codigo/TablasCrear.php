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
		  opcodigo int(8) UNSIGNED NOT NULL,
		  opnombre varchar(50) COLLATE utf8_spanish_ci NOT NULL,
		  clave char(20) COLLATE utf8_spanish_ci NOT NULL,
		  Nivel tinyint(1) UNSIGNED NOT NULL,
		  CodigoPlantel char(20) COLLATE utf8_spanish_ci NOT NULL
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci";

		$resultado = mysqli_query($con,$sql);
		/*Volcado de datos para la tabla `cuentas`*/

		if($resultado){
		$ins= "INSERT INTO cuentas (`opcodigo`, `opnombre`, `clave`, `Nivel`, `CodigoPlantel`) VALUES
		(396910, 'Jesus Dimitri Medina Novelo', 'Cuchara', 1, '1')";
		mysqli_query($con,$ins);
		}

		/* Índices para tablas volcadas */

		/* Indices de la tabla `cuentas` */

		$llaveprimaria = "ALTER TABLE cuentas ADD PRIMARY KEY (`opcodigo`)";

		mysqli_query($con,$llaveprimaria);

/* Estructura de tabla para la tabla `Alumnos` */
    $sql1= "CREATE TABLE `alumnos` (
      `Rutas` int(8) NOT NULL,
      `Id_Alumno` int(8) NOT NULL,
      `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
      `Apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
      `Numero` int(10) NOT NULL,
      `Id_Pago` int(8) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci";

    mysqli_query($con,$sql1);

    $pk = "ALTER TABLE `alumnos`
      ADD KEY `Rutas` (`Rutas`),
      ADD KEY `Id_Pago` (`Id_Pago`)";

    mysqli_query($con,$pk);


/* *********************************************************************************************************************** */
/* Estructura de tabla para la tabla `autobuses` */
    $sql2= "CREATE TABLE `autobuses` (
      `Placas` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
      `Marca` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
      `Modelo` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
      `Capacidad` int(2) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci";


    mysqli_query($con,$sql2);

    $pk2 = "ALTER TABLE `autobuses`
    ADD PRIMARY KEY (`Placas`)";

    mysqli_query($con,$pk2);
/* *********************************************************************************************************************** */


/* ---------------------------------------------------------------------------------------------------------------------- */
/* Estructura de tabla para la tabla `conductores` */
$sql3= "CREATE TABLE `conductores` (
  `id_conductor` bigint(20) UNSIGNED NOT NULL,
  `Nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `licencia` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sueldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci";


mysqli_query($con,$sql3);

$pk3 = "ALTER TABLE `conductores`
    ADD PRIMARY KEY (`id_conductor`)";

mysqli_query($con,$pk3);
/* ---------------------------------------------------------------------------------------------------------------------- */

/* ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* Estructura de tabla para la tabla `direcciones` */
$sql4= "CREATE TABLE `direcciones` (
  `Id_direcciones` int(8) NOT NULL,
  `calle` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `no_calle` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci";

$res4=mysqli_query($con, $sql4);

$pk4 = "ALTER TABLE `direcciones`
    ADD PRIMARY KEY (`Id_direcciones`)";

mysqli_query($con,$pk4);

/* ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */


/* ---------------------------------------------------------------------------------------------------------------------- */
/* Estructura de tabla para la tabla `horarios` */
$sql5= "CREATE TABLE `horarios` (
  `Id_Horario` int(8) NOT NULL,
  `Inicio_Turno` time NOT NULL,
  `Final_Turno` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci";

mysqli_query($con,$sql5);

$pk5 = "ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Id_Horario`)";

mysqli_query($con,$pk5);
/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */
/* Estructura de tabla para la tabla `pagos` */
$sql6= "CREATE TABLE `pagos` (
  `Id_Pago` int(8) NOT NULL,
  `Fecha_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Metodo_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Adeudo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci";


mysqli_query($con,$sql6);

$pk6 = "ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id_Pago`)";

mysqli_query($con,$pk6);
/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */
/* Estructura de tabla para la tabla `rutas` */
$sql8= "CREATE TABLE `rutas` (
      `Rutas` int(8) NOT NULL,
      `Cantidad_Pasajeros` int(2) NOT NULL,
      `Id_Horario` int(8) NOT NULL,
      `id_conductor` bigint(20) UNSIGNED NOT NULL,
      `Placas` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
      `Id_direcciones` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci";

mysqli_query($con,$sql8);

$pk8 = "ALTER TABLE `rutas`
  ADD PRIMARY KEY (`Rutas`),
  ADD KEY `Id_Horario` (`Id_Horario`,`id_conductor`,`Placas`),
  ADD KEY `Placas` (`Placas`),
  ADD KEY `id_conductor` (`id_conductor`),
  ADD KEY `Id_direcciones` (`Id_direcciones`)";

mysqli_query($con,$pk8);
/* ---------------------------------------------------------------------------------------------------------------------- */

?>