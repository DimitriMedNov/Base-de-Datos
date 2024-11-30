<form id="guardarDatos">
    <div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Conductor Nuevo</h4>
                </div>
                <div class="modal-body">

                    <div id="datos_ajax_register"></div>

                    <div class="form-group">
                        <label for="idconductor0" class="control-label">ID:</label>
                        <input type="text" class="form-control input-sm" id="idconductor0" name="id_conductor" required maxlength="20" placeholder="ID">
                    </div>
                    <div class="form-group">
                        <label for="nombre0" class="control-label">Nombres:</label>
                        <input type="text" class="form-control input-sm" id="nombre0" name="Nombre" required maxlength="40" placeholder="Nombres">
                    </div>
                    <div class="form-group">
                        <label for="apellido0" class="control-label">Apellidos:</label>
                        <input type="text" class="form-control input-sm" id="apellido0" name="Apellido" required maxlength="40" placeholder="Apellidos">
                    </div>
                    <div class="form-group">
                        <label for="licencia0" class="control-label">Numero de licencia:</label>
                        <input type="text" class="form-control input-sm" id="licencia0" name="licencia" required maxlength="10" placeholder="Numero de licencia">
                    </div>
                    <div class="form-group">
                        <label for="sueldo0" class="control-label">Sueldo:</label>
                        <input type="text" class="form-control input-sm" id="sueldo0" name="sueldo" required maxlength="11" placeholder="Sueldo">
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