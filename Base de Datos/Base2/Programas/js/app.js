	function load(page){
		var parametros = {"action":"ajax","page":page};
		$("#loader").fadeIn('slow'); 
		$.ajax({
			type: "POST", //Agregar Esta Linea.
			url:'regs_cuentas_ajax.php',
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
		  var button   = $(event.relatedTarget) // Botón que activó el modal
		  var opcodigo = button.data('opcodigo') // Extraer la información de atributos de datos
		  var opnombre = button.data('opnombre') // Extraer la información de atributos de datos
		  var clave    = button.data('clave') // Extraer la información de atributos de datos
		  var nivel = button.data('nivel') // Extraer la información de atributos de datos
		  var codigoplantel = button.data('codigoplantel') // Extraer la información de atributos de datos
		
		  var modal = $(this)
		  modal.find('.modal-title').text('Cuenta con numero: '+opcodigo)
		  modal.find('.modal-body #opcodigo').val(opcodigo)
		  modal.find('.modal-body #opnombre').val(opnombre)
		  modal.find('.modal-body #clave').val(clave)
		  modal.find('.modal-body #nivel').val(nivel)
		  modal.find('.modal-body #codigoplantel').val(codigoplantel)	  
		  
		  $('.alert').hide();//Oculto alert
		})
		
		$('#dataDelete').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Botón que activó el modal
		  var id = button.data('opcodigo') // Extraer la información de atributos de datos
		  var modal = $(this)
		  modal.find('#opcodigo').val(id)
		})

	$( "#actualidarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ctaact.php",
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
			/* El método . serialize() de jQuery analiza los formularios en busca de inputs,
			 textareas, campos de selección, campos de tipo texto y en resumen cualquier 
			 tipo de campo soportado por la API HTML que podamos emplear en un formulario
			  para recoger datos de usuario */
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ctaagr.php",
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
					url: "mod_ctasupr.php",
					data: parametros,
					 beforeSend: function(objeto){
						$(".datos_ajax_delete").html("Mensaje: Cargando...");
					  },
					success: function(datos){
					$(".datos_ajax_delete").html(datos);
					
					$('#dataDelete').modal('hide');
					load(1);
				  }
			});
		  event.preventDefault();
		});
