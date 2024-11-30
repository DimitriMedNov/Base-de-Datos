	function load(page){
		var parametros = {"action":"ajax","page":page};
		$("#loader").fadeIn('slow');
		$.ajax({
			type: "POST", //Agregar Esta Linea.
			url:'fics_ajax.php',
			data: parametros,
			 beforeSend: function(objeto){
			$("#loader").html("<img src='loader.gif'>");
			},
			success:function(data){
				$(".outer_div").html(data).fadeIn('slow');
				$("#loader").html("");
			}
		})
	}

		$('#dataUpdate').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Botón que activó el modal		  
		  var numficha = button.data('numficha') // Extraer la información de atributos de datos
		  var matricula = button.data('matricula') // Extraer la información de atributos de datos		  // Extraer la información de atributos de datos
		  var fecha = button.data('fecha') // Extraer la información de atributos de datos
		  var nombre = button.data('nombre') // Extraer la información de atributos de datos		
		  var apepat = button.data('apepat') // Extraer la información de atributos de datos
		  var apemat = button.data('apemat') // Extraer la información de atributos de datos
		  var grupo = button.data('grupo') // Extraer la información de atributos de datos
		  var especialidad = button.data('especialidad') // Extraer la información de atributos de datos
		  var tipof = button.data('tipof') // Extraer la información de atributos de datos	
		  var proc = button.data('proc') // Extraer la información de atributos de datos
		  var lineacap = button.data('lineacap') // Extraer la información de atributos de datos	
		  var fec_venc = button.data('fec_venc')	  
		  var tipopago = button.data('tipopago') // Extraer la información de atributos de datos
		  var fortalec = button.data('fortalec') // Extraer la información de atributos de datos		
		  var certifica = button.data('certifica') // Extraer la información de atributos de datos
		  var seguroest = button.data('seguroest') // Extraer la información de atributos de datos
		  var total = button.data('total') // Extraer la información de atributos de datos
		   // Extraer la información de atributos de datos	  
		  
		  var modal = $(this)
		  modal.find('.modal-title').text('Modificar FiCHA con Numero de Ficha: '+ numficha)
		  modal.find('.modal-body #numficha').val(numficha)
		  modal.find('.modal-body #matricula').val(matricula)		  
		  modal.find('.modal-body #fecha').val(fecha)
		  modal.find('.modal-body #nombre').val(nombre)		 
		  modal.find('.modal-body #apepat').val(apepat)
		  modal.find('.modal-body #apemat').val(apemat)
		  modal.find('.modal-body #grupo').val(grupo)
		  modal.find('.modal-body #especialidad').val(especialidad)
		  modal.find('.modal-body #tipof').val(tipof)
		  modal.find('.modal-body #proc').val(proc)		   
		  modal.find('.modal-body #lineacap').val(lineacap)	
		  modal.find('.modal-body #fec_venc').val(fec_venc)
		  modal.find('.modal-body #tipopago').val(tipopago)
		  modal.find('.modal-body #fortalec').val(fortalec)
		  modal.find('.modal-body #certifica').val(certifica)		  
		  modal.find('.modal-body #seguroest').val(seguroest)
		  modal.find('.modal-body #total').val(total)
		  		    		  
		  $('.alert').hide();//Oculto alert
		})		
		
		 $('#dataDelete').on('show.bs.modal', function (event) {
		   var button = $(event.relatedTarget) // Botón que activó el modal		  
		//   var id = button.data('numficha') // Extraer la información de atributos de datos
		//   var modal = $(this)
		//   modal.find('#numficha').val(id)
		   var id = button.data('numficha')
		   var apemat = button.data('apemat') // Se toma este dato para adicionar la etiqueta "Cancelada"		   
		   var fortalec = button.data('fortalec') // Extraer la información de atributos de datos		
		   var certifica = button.data('certifica') // Extraer la información de atributos de datos
		   var seguroest = button.data('seguroest') // Extraer la información de atributos de datos
		   var total = button.data('total') // Extraer la información de atributos de datos
		   var modal = $(this)
		   modal.find('#numficha').val(id)
		   modal.find('#apemat').val(apemat)
		   modal.find('#fortalec').val(fortalec)
		   modal.find('#certifica').val(certifica)
		   modal.find('#seguroest').val(seguroest)
		   modal.find('#total').val(total)
		 })



	   $( "#actualidarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ficact.php",
					data: parametros,
					 beforeSend: function(objeto){
						$("#datos_ajax").html("Mensaje: Cargando...");
					  },
					success: function(datos){
					$("#datos_ajax").html(datos);
					
					load(1);
				  }
			});
		  event.preventDefault();
		});
		
		$( "#guardarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ctagr.php",
					data: parametros,
					 beforeSend: function(objeto){
						$("#datos_ajax_register").html("Mensaje: Cargando...");
					  },
					success: function(datos){
					$("#datos_ajax_register").html(datos);
					
					load(1);
				  }
			});
		  event.preventDefault();
		});
		
		$( "#eliminarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ficsupr.php",
					data: parametros,
					 beforeSend: function(objeto){
						$(".datos_ajax_delete").html("Mensaje: Cargando...");
					  },
					success: function(datos){
					$(".datos_ajax_delete").html(datos);				
					// $('#dataDelete').modal('hide');
					load(1);
				  }
			});
		  event.preventDefault();
		});
