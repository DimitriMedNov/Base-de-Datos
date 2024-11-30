<form id="guardarDatos">
    <div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Agregar Autobus</h4>
                </div>
                <div class="modal-body">

                    <div id="datos_ajax_register"></div>

                    <div class="form-group">
                        <label for="Placas" class="control-label">Plcas:</label>
                        <input type="text" class="form-control input-sm" id="Placas" name="Placas" required maxlength="10" placeholder="Numero de Placas">
                    </div>
                    <div class="form-group">
                        <label for="Marca" class="control-label">Nombre de la Marca:</label>
                        <input type="text" class="form-control input-sm" id="Marca" name="Marca" required maxlength="250" placeholder="Nombre de la marca">
                    </div>
                    <div class="form-group">
                        <label for="Modelo" class="control-label">Modelo:</label>
                        <input type="text" class="form-control input-sm" id="Modelo" name="Modelo" required maxlength="250" placeholder="Modelo del coche">
                    </div>
                    <div class="form-group">
                        <label for="Capacidad" class="control-label">Capacidad:</label>
                        <input type="text" class="form-control input-sm" id="Capacidad" name="Capacidad" required maxlength="2" placeholder="Capacidad del autobus">
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
