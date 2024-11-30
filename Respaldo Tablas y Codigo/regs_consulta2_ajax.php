<?php
/*-----------------------
curso: Bases de datos avanzadas
Version de PHP: 5.6.3
----------------------------*/
header("Content-Type: text/html;charset=utf-8");
// Encabezado y fondo
require('../config.php');
include('LibEncfondoCSS.php');

# conectare la base de datos
require('../config.php');
$con=mysqli_connect($CFG->dbhost,$CFG->dbuser,$CFG->dbpass,$CFG->dbname);
if(!$con){
    die("imposible conectarse: ".mysqli_error($con));
}
if (@mysqli_connect_errno()) {
    die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());    }
// Poniendo los caracteres utrf8
mysqli_set_charset($con, "utf8");
$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
if($action == 'ajax'){
    include 'pagination.php'; //incluir el archivo de paginación
    //las variables de paginación
    $page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
    $per_page = 10; //la cantidad de registros que desea mostrar
    $adjacents  = 4; //brecha entre páginas después de varios adyacentes
    $offset = ($page - 1) * $per_page;

    //Cuenta el número total de filas de la tabla*/
    // Modificar según la tabla
    $count_query   = mysqli_query($con,"SELECT count(*) AS numrows FROM pagos");
    if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
    $total_pages = ceil($numrows/$per_page);
    $reload = 'Consulta_2.php'; /* Modificar aqui segun tu programa */

    //consulta principal para recuperar los datos
    $query = mysqli_query($con,"SELECT Id_Pago, Adeudo FROM pagos ORDER BY Adeudo DESC LIMIT $offset,$per_page");
    // echo $numrows ;
    // exit("pausado");
    if ($numrows>0){
        ?>
        <table class="table table-condensed table-hover table-responsive">
            <thead>
            <tr>
                <th>ID de Pago</th>
                <th>Adeudos de forma descendiente</th>
            </tr>
            </thead>
            <tbody>
            <?php
            while($row = mysqli_fetch_array($query)){
                ?>
                <tr>
                    <td><?php echo $row['Id_Pago'];?></td>
                    <td><?php echo $row['Adeudo'];?></td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
        <div class="table-pagination pull-right">
            <?php echo paginate($reload, $page, $total_pages, $adjacents);?>
        </div>

        <?php

    } else {
        ?>
        <div class="alert alert-warning alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4>Aviso!!!</h4> No hay datos para mostrar
        </div>
        <?php
    }
}
?>