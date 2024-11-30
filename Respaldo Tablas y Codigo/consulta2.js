function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
        type: "POST", //Agregar Esta Linea.
        url:'regs_consulta2_ajax.php',
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