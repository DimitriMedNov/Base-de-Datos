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
                        <label for="idhorario" class="control-label">ID Horario:</label>
                        <input type="text" class="form-control input-sm" id="idhorario" name="Id_Horario" required maxlength="8" placeholder="ID Horario">
                        <input type="hidden" class="form-control" id="idhorario" name="Id_Horario">
                    </div>
                    <div class="form-group">
                        <label for="inicioturno" class="control-label">Inicio de turno:</label>
                        <input type="text" class="form-control input-sm" id="inicioturno" name="Inicio_Turno" required maxlength="40" placeholder="Inicio de turno">
                    </div>
                    <div class="form-group">
                        <label for="finalturno" class="control-label">Final de turno:</label>
                        <input type="text" class="form-control input-sm" id="finalturno" name="Final_Turno" required maxlength="40" placeholder="Final de turno">
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