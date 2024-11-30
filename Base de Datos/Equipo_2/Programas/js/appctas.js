	function load(page){
		var parametros = {"action":"ajax","page":page};
		$("#loader").fadeIn('slow');
		$.ajax({
			type: "POST", //Agregar Esta Linea.
			url:'cntas_ajax.php',
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
		  var codigo = button.data('codigo') // Extraer la información de atributos de datos
		  var nombre = button.data('nombre') // Extraer la información de atributos de datos
		  var clave = button.data('clave') // Extraer la información de atributos de datos
		  var nivel = button.data('nivel') // Extraer la información de atributos de datos
		  var plantel = button.data('plantel') // Extraer la información de atributos de datos		  
		  
		  var modal = $(this)
		  modal.find('.modal-title').text('Modificar cuenta con codigo: '+codigo)
		  modal.find('.modal-body #codigo').val(codigo)
		  modal.find('.modal-body #nombre').val(nombre)
		  modal.find('.modal-body #clave').val(clave)
		  modal.find('.modal-body #nivel').val(nivel)
		  modal.find('.modal-body #plantel').val(plantel)		  
		  $('.alert').hide();//Oculto alert
		})
		
		$('#dataDelete').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Botón que activó el modal
		  var id = button.data('codigo') // Extraer la información de atributos de datos
		  var modal = $(this)
		  modal.find('#codigo').val(id)
		})

	$( "#actualidarDatos" ).submit(function( event ) {
		var parametros = $(this).serialize();
			 $.ajax({
					type: "POST",
					url: "mod_ctact.php",
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
