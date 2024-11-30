function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
        type: "POST", //Agregar Esta Linea.
        url:'regs_pagos_ajax.php',
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
    var idpago = button.data('idpago') // Extraer la información de atributos de datos
    var fechapago = button.data('fechapago') // Extraer la información de atributos de datos
    var metopago = button.data('metopago') // Extraer la información de atributos de datos
    var adeudo = button.data('adeudo') // Extraer la información de atributos de datos

    var modal = $(this)
    modal.find('.modal-title').text('Identificador con numero: '+idpago)
    modal.find('.modal-body #idpago').val(idpago)
    modal.find('.modal-body #fechapago').val(fechapago)
    modal.find('.modal-body #metopago').val(metopago)
    modal.find('.modal-body #adeudo').val(adeudo)

    $('.alert').hide();//Oculto alert
})

$('#dataDelete').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Botón que activó el modal
    var id = button.data('idpago') // Extraer la información de atributos de datos
    var modal = $(this)
    modal.find('#idpago').val(id)
})

$( "#actualidarDatos" ).submit(function( event ) {
    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "mod_pagosact.php",
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
        url: "mod_pagosagr.php",
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
        url: "mod_pagossupr.php",
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
