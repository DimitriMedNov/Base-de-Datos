	function load(page){
		var parametros = {"action":"ajax","page":page};
		$("#loader").fadeIn('slow');
		$.ajax({
			type: "POST", //Agregar Esta Linea.
			url:'alumnos_ajax.php',
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
		  var matricula = button.data('matricula') // Extraer la información de atributos de datos
		  var nombre = button.data('nombre') // Extraer la información de atributos de datos
		  var apepat = button.data('apepat') // Extraer la información de atributos de datos
		  var apemat = button.data('apemat') // Extraer la información de atributos de datos
		  var grupo = button.data('grupo') // Extraer la información de atributos de datos
		  var especialidad = button.data('especialidad') // Extraer la información de atributos de datos
		 
		  var modal = $(this)
		  modal.find('.modal-title').text('Modificar alumno con matricula: '+matricula)
		  modal.find('.modal-body #matricula').val(matricula)
		  modal.find('.modal-body #nombre').val(nombre)
		  modal.find('.modal-body #apepat').val(apepat)
		  modal.find('.modal-body #apemat').val(apemat)
		  modal.find('.modal-body #grupo').val(grupo)
		  modal.find('.modal-body #especialidad').val(especialidad)
		  
		  $('.alert').hide();//Oculto alert
		})
		
		$('#dataDelete').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Botón que activó el modal
		  var id = button.data('matricula') // Extraer la información de atributos de datos
		  var modal = $(this)
		  modal.find('#matricula').val(id)
		})

	$( "#actualidarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_aluact.php",
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
					url: "mod_aluagr.php",
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
					url: "mod_alusupr.php",
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
