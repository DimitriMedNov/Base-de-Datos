function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
        type: "POST", //Agregar Esta Linea.
        url:'regs_autobuses_ajax.php',
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
    var Placas = button.data('placas') // Extraer la información de atributos de datos
    var Marca = button.data('marca') // Extraer la información de atributos de datos
    var Modelo = button.data('modelo')
    var Capacidad = button.data('capacidad')

    var modal = $(this)
    modal.find('.modal-title').text('Placas con numero: '+ Placas)
    modal.find('.modal-body #placas').val(Placas)
    modal.find('.modal-body #marca').val(Marca)
    modal.find('.modal-body #modelo').val(Modelo)
    modal.find('.modal-body #capacidad').val(Capacidad)

    $('.alert').hide();//Oculto alert
})

$('#dataDelete').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Botón que activó el modal
    var id = button.data('placas') // Extraer la información de atributos de datos
    var modal = $(this)
    modal.find('#placas').val(id)
})

$( "#actualidarDatos" ).submit(function( event ) {
    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "mod_autobusesact.php",
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
        url: "mod_autobusesagr.php",
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
        url: "mod_autobusessupr.php",
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