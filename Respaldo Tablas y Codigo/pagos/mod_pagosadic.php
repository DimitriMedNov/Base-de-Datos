<form id="guardarDatos">
    <div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Pago Nuevo</h4>
                </div>
                <div class="modal-body">

                    <div id="datos_ajax_register"></div>

                    <div class="form-group">
                        <label for="idpago0" class="control-label">ID Pago:</label>
                        <input type="text" class="form-control input-sm" id="idpago0" name="Id_Pago" required maxlength="8" placeholder="ID de pago">
                    </div>
                    <div class="form-group">
                        <label for="fechapago0" class="control-label">Fecha de pago:</label>
                        <input type="text" class="form-control input-sm" id="fechapago0" name="Fecha_Pago" required maxlength="40" placeholder="Fecha de pago">
                    </div>
                    <div class="form-group">
                        <label for="metopago0" class="control-label">Metodo de pago:</label>
                        <input type="text" class="form-control input-sm" id="metopago0" name="Metodo_Pago" required maxlength="40" placeholder="Metodo de pago">
                    </div>
                    <div class="form-group">
                        <label for="adeudo0" class="control-label">Adeudo:</label>
                        <input type="text" class="form-control input-sm" id="adeudo0" name="Adeudo" required maxlength="10" placeholder="Adeudo">
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