<form id="guardarDatos">
    <div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Alumno Nuevo</h4>
                </div>
                <div class="modal-body">

                    <div id="datos_ajax_register"></div>

                    <div class="form-group">
                        <label for="idalumno" class="control-label">ID Alumno:</label>
                        <input type="text" class="form-control input-sm" id="idalumno" name="Id_Alumno" required maxlength="8" placeholder="ID Alumno">
                    </div>

                    <div class="form-group">
                        <label for="nombre" class="control-label">Nombre:</label>
                        <input type="text" class="form-control input-sm" id="nombre" name="Nombre" required maxlength="30" placeholder="Nombre">
                    </div>

                    <div class="form-group">
                        <label for="apellido" class="control-label">Apellido:</label>
                        <input type="text" class="form-control input-sm" id="apellido" name="Apellido" required maxlength="30" placeholder="Apellido">
                    </div>

                    <div class="form-group">
                        <label for="rutas" class="control-label">Rutas:</label>
                        <input type="text" class="form-control input-sm" id="rutas" name="Rutas" required maxlength="8" placeholder="Rutas">
                    </div>

                    <div class="form-group">
                        <label for="numero" class="control-label">Numero de telefono:</label>
                        <input type="text" class="form-control input-sm" id="numero" name="Numero" required maxlength="10" placeholder="Numero de telefono">
                    </div>

                    <div class="form-group">
                        <label for="idpago" class="control-label">Identificador de pago:</label>
                        <input type="text" class="form-control input-sm" id="idpago" name="Id_Pago" required maxlength="8" placeholder="Identificador de pago">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar datos</button>
                </div>
            </div>
        </div>
    </div>
</form>