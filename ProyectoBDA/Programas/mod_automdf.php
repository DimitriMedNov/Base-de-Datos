<form id="actualidarDatos">
    <div class="modal fade" id="dataUpdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Modificar Autobus:</h4>
                </div>
                <div class="modal-body">
                    <div id="datos_ajax"></div>
                    <div class="form-group">
                        <label for="Marca" class="control-label">Nombre de la marca:</label>
                        <input type="text" class="form-control input-sm" id="Marca" name="Marca" required maxlength="250" placeholder="Marca del Autobus">
                        <input type="hidden" class="form-control" id="Placas" name="Placas">
                    </div>
                    <div class="form-group">
                        <label for="Modelo" class="control-label">Modelo del Autobus:</label>
                        <input type="text" class="form-control input-sm" id="Modelo" name="Modelo" required maxlength="250" placeholder="Modelo del Autobus">
                    </div>
                    <div class="form-group">
                        <label for="idtemp" class="control-label">Capacidad del Autobus:</label>
                        <input type="text" class="form-control input-sm" id="Capacidad" name="Capacidad" required maxlength="2" placeholder="Capacidad del Autobus">
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
