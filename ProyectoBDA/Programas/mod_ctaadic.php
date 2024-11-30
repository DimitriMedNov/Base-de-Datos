<form id="guardarDatos">
<div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Datos Para Usuario Nuevo</h4>
      </div>
      <div class="modal-body">

			<div id="datos_ajax_register"></div>
         
        <div class="form-group">
           <label for="opcodigo0" class="control-label">ID:</label>
           <input type="text" class="form-control input-sm" id="opcodigo0" name="opcodigo" required maxlength="11" placeholder="ID">
        </div>    
        <div class="form-group">
          <label for="opnombre0" class="control-label">Nombres & Apellidos:</label>
          <input type="text" class="form-control input-sm" id="opnombre0" name="opnombre" required maxlength="40" placeholder="Nombres & Apellidos">
        </div>
        <div class="form-group">
          <label for="clave0" class="control-label">Contraseña:</label>
          <input type="text" class="form-control input-sm" id="clave0" name="clave" required maxlength="40" placeholder="Contraseña">
        </div>
         <div class="form-group">
          <label for="nivel0" class="control-label">Nivel de usuario:</label>
          <input type="text" class="form-control input-sm" id="nivel0" name="nivel" required maxlength="40" placeholder="Nivel de usuario">
        </div>
        <div class="form-group">
          <label for="codigoplantel0" class="control-label">Numero de plantel:</label>
          <input type="text" class="form-control input-sm" id="codigoplantel0" name="codigoplantel" required maxlength="25" placeholder="Numero de plantel">
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