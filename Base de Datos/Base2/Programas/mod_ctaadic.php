<form id="guardarDatos">
<div class="modal fade" id="dataRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Agregar Cuentas</h4>
      </div>
      <div class="modal-body">

			<div id="datos_ajax_register"></div>
         
        <div class="form-group">
           <label for="opcodigo0" class="control-label">Codigo:</label>   
           <input type="text" class="form-control input-sm" id="opcodigo0" name="opcodigo" required maxlength="11" placeholder="Codigo">                       
        </div>    
        <div class="form-group">
          <label for="opnombre0" class="control-label">Nombres:</label>          
          <input type="text" class="form-control input-sm" id="opnombre0" name="opnombre" required maxlength="40" placeholder="Nombres">       
        </div>
        <div class="form-group">
          <label for="clave0" class="control-label">Clave:</label>
          <input type="text" class="form-control input-sm" id="clave0" name="clave" required maxlength="40" placeholder="clave">         
        </div>
         <div class="form-group">
          <label for="nivel0" class="control-label">Nivel:</label>
          <input type="text" class="form-control input-sm" id="nivel0" name="nivel" required maxlength="40" placeholder="Nivel">
        </div>
        <div class="form-group">
          <label for="codigoplantel0" class="control-label">Sucursal:</label>
          <input type="text" class="form-control input-sm" id="codigoplantel0" name="codigoplantel" required maxlength="25" placeholder="Sucursal">
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