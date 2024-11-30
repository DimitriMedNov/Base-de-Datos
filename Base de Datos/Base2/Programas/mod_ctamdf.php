<form id="actualidarDatos">
  <div class="modal fade" id="dataUpdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="exampleModalLabel">Modificar cuentas:</h4>
          </div>
            <div class="modal-body">
      		     <div id="datos_ajax"></div>         
        		      <div class="form-group">  
                     <label for="opnombre" class="control-label">Nombres:</label>
                     <input type="text" class="form-control input-sm" id="opnombre" name="opnombre" required maxlength="40" placeholder="Nombres">   
                     <input type="hidden" class="form-control" id="opcodigo" name="opcodigo"> 
                  </div>
        		      <div class="form-group">     
                     <label for="clave" class="control-label">Clave:</label>
                     <input type="text" class="form-control input-sm" id="clave" name="clave" required maxlength="40" placeholder="Clave">
                  </div>
        		      <div class="form-group">
                    <label for="nivel" class="control-label">Nivel:</label>
                    <input type="text" class="form-control input-sm" id="nivel" name="nivel" required maxlength="40" placeholder="nivel"> 
                  </div>
        		      <div class="form-group">                    
                    <label for="codigoplantel" class="control-label">Sucursal:</label>
                    <input type="text" class="form-control input-sm" id="codigoplantel" name="codigoplantel" required maxlength="25" placeholder="Sucursal">
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