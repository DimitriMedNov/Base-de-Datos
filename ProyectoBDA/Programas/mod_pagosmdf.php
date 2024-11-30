<form id="actualidarDatos">
    <div class="modal fade" id="dataUpdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Horario Nuevo:</h4>
                </div>
                <div class="modal-body">
                    <div id="datos_ajax"></div>
                    <div class="form-group">
                        <label for="fechapago" class="control-label">Fecha de pago:</label>
                        <input type="text" class="form-control input-sm" id="fechapago" name="Fecha_Pago" required maxlength="40" placeholder="Fecha de pago
                        <input type="hidden" class="form-control" id="idpago" name="Id_Pago">
                    </div>
                    <div class="form-group">
                        <label for="metopago" class="control-label">Metodo de pago:</label>
                        <input type="text" class="form-control input-sm" id="metopago" name="Metodo_Pago" required maxlength="40" placeholder="Metodo de pago">
                    </div>
                    <div class="form-group">
                        <label for="adeudo" class="control-label">Adeudo:</label>
                        <input type="text" class="form-control input-sm" id="adeudo" name="Adeudo" required maxlength="40" placeholder="Adeudo">
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