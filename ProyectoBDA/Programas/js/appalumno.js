function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
        type: "POST", //Agregar Esta Linea.
        url:'regs_alumnos_ajax.php',
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
    var Rutas = button.data('rutas') // Extraer la información de atributos de datos
    var Id_Alumno = button.data('idalumno') // Extraer la información de atributos de datos
    var Nombre    = button.data('nombre') // Extraer la información de atributos de datos
    var Apellido = button.data('apellido') // Extraer la información de atributos de datos
    var Numero = button.data('numero') // Extraer la información de atributos de datos
    var Id_Pago = button.data('idpago')

    var modal = $(this)
    modal.find('.modal-title').text('Alumno con numero: '+Id_Alumno)
    modal.find('.modal-body #idalumno').val(Id_Alumno)
    modal.find('.modal-body #rutas').val(Rutas)
    modal.find('.modal-body #nombre').val(Nombre)
    modal.find('.modal-body #apellido').val(Apellido)
    modal.find('.modal-body #numero').val(Numero)
    modal.find('.modal-body #idpago').val(Id_Pago)

    $('.alert').hide();//Oculto alert
})

$('#dataDelete').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Botón que activó el modal
    var id = button.data('idalumno') // Extraer la información de atributos de datos
    var modal = $(this)
    modal.find('#idalumno').val(id)
})

$( "#actualidarDatos" ).submit(function( event ) {
    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "mod_alumnosact.php",
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
        url: "mod_alumnosagr.php",
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
        url: "mod_alumnossupr.php",
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
