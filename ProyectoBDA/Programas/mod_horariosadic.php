<form id="guardarDatos">
    <div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">Datos Para Horaio Nuevo</h4>
                </div>
                <div class="modal-body">

                    <div id="datos_ajax_register"></div>

                    <div class="form-group">
                        <label for="idhorario0" class="control-label">ID Horario:</label>
                        <input type="text" class="form-control input-sm" id="idhorario0" name="Id_Horario" required maxlength="8" placeholder="ID horario">
                    </div>
                    <div class="form-group">
                        <label for="inicioturno0" class="control-label">Inicio de turno:</label>
                        <input type="text" class="form-control input-sm" id="inicioturno0" name="Inicio_Turno" required maxlength="40" placeholder="Inicio de turno">
                    </div>
                    <div class="form-group">
                        <label for="finalturno0" class="control-label">Final de turno:</label>
                        <input type="text" class="form-control input-sm" id="finalturno0" name="Final_Turno" required maxlength="40" placeholder="Final de turno">
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