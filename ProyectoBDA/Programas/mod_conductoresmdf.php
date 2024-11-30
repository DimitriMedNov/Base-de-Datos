<form id="actualidarDatos">
    <div class="modal fade" id="dataUpdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Conductor Nuevo:</h4>
                </div>
                <div class="modal-body">
                    <div id="datos_ajax"></div>
                    <div class="form-group">
                        <label for="nombre" class="control-label">Nombre:</label>
                        <input type="text" class="form-control input-sm" id="nombre" name="Nombre" required maxlength="40" placeholder="Nombres">
                        <input type="hidden" class="form-control" id="idconductor" name="id_conductor">
                    </div>
                    <div class="form-group">
                        <label for="apellido" class="control-label">Apellidos:</label>
                        <input type="text" class="form-control input-sm" id="apellido" name="Apellido" required maxlength="40" placeholder="Apellido">
                    </div>
                    <div class="form-group">
                        <label for="licencia" class="control-label">Licencia:</label>
                        <input type="text" class="form-control input-sm" id="licencia" name="licencia" required maxlength="40" placeholder="Licencia">
                    </div>
                    <div class="form-group">
                        <label for="sueldo" class="control-label">Sueldo:</label>
                        <input type="text" class="form-control input-sm" id="sueldo" name="sueldo" required maxlength="25" placeholder="Sueldo">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Actualizar datos</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>