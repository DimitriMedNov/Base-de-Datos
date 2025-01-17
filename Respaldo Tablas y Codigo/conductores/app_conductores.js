function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
        type: "POST", //Agregar Esta Linea.
        url:'regs_conductores_ajax.php',
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
    var idconductor = button.data('idconductor') // Extraer la información de atributos de datos
    var nombre = button.data('nombre') // Extraer la información de atributos de datos
    var apellido = button.data('apellido') // Extraer la información de atributos de datos
    var licencia = button.data('licencia') // Extraer la información de atributos de datos
    var sueldo = button.data('sueldo') // Extraer la información de atributos de datos

    var modal = $(this)
    modal.find('.modal-title').text('Identificador con numero: '+idconductor)
    modal.find('.modal-body #idconductor').val(idconductor)
    modal.find('.modal-body #nombre').val(nombre)
    modal.find('.modal-body #apellido').val(apellido)
    modal.find('.modal-body #licencia').val(licencia)
    modal.find('.modal-body #sueldo').val(sueldo)

    $('.alert').hide();//Oculto alert
})

$('#dataDelete').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Botón que activó el modal
    var id = button.data('idconductor') // Extraer la información de atributos de datos
    var modal = $(this)
    modal.find('#idconductor').val(id)
})

$( "#actualidarDatos" ).submit(function( event ) {
    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "mod_conductoresact.php",
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
        url: "mod_conductoresagr.php",
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
        url: "mod_conductoressupr.php",
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
