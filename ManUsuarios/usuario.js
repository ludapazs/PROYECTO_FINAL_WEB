function inicio(){
	lista(1,1);
}

function lista(pag,orden){
    sessionStorage.setItem('pag',pag);
    sessionStorage.setItem('orden',orden);
    var busca = $("#txtbusca").val();
	 $.ajax({
        url: 'lista.php',
        dataType: 'text',
        type: 'post',
        data: {'pag':pag,'orden':orden,'busca':busca},
        success: function( data ){
            $('#divregistros').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
    paginacion();
}


function eliminar(id){
    $.ajax({
        url: 'eliminar.php',
        dataType: 'text',
        type: 'post',
        data: {'id': id },
        success: function( data ){
            if(data==1){
                $("#divmsg").html("Registro eliminado!");
                lista(1,1);
            } else {
                $("#divmsg").html("Error al eliminar el registro!");
            }
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}

function guardar(){
    var id  = $("#id").val();
    var nom = $("#txtnombre").val();
    var passw = $("#txtpassword").val();

    if(id>0){
        // Editar
        $.ajax({
            url: 'actualizar.php',
            dataType: 'text',
            type: 'post',
            data: {'id': id, 'jsnombre': nom, 'jsp': passw },
            success: function( data ){
                console.log(data);
                if(data==1){
                    $("#divmsg").html("Registro actualizado!");
                    lista(1,1);
                } else {
                    $("#divmsg").html("Error al actualizar el registro!");
                }
            },
            error: function( jqXhr, textStatus, errorThrown ){
                console.log( errorThrown );
            }
        });
    } else {
        $.ajax({
            url: 'guardar.php',
            dataType: 'text',
            type: 'post',
            data: {'id': id, 'jsnombre': nom, 'jsp': passw   },   
            success: function( data ){
                console.log(data);
                if(data==1){
                    $("#divmsg").html("Registro insertado!");
                    lista(1,1);
                } else {
                    $("#divmsg").html("Error al insertar el registro!");
                }
            },
            error: function( jqXhr, textStatus, errorThrown ){
                console.log( errorThrown );
            }
        });
    }
    limpiar();
    $("#divform").modal("toggle");
}

function editar(id){
    $.ajax({
        url: 'editar.php',
        dataType: 'text',
        type: 'post',
        data: {'id': id },
        success: function( data ){
            var datos = JSON.parse(data);
            $("#divform").modal("toggle");
            $("#id").val(datos.id);
            $("#txtnombre").val(datos.usuario);
            $("#txtpassword").val(datos.password);
            console.log(data);
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}

function limpiar(){
  

    $("#divform").modal("toggle");
    $("#id").val('');
    $("#txtnombre").val('');
    $("#txtpassword").val('');
}

function nuevo(){
    limpiar();
    $("#divform").modal("toggle");
}

function paginacion(){
    $.ajax({
        url: 'paginacion.php',
        dataType: 'text',
        type: 'post',
        data: { 'busca':$("#txtbusca").val() },
        success: function( data ){
            $("#paginacion").html(data);
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}

function ordenar(orden){
    lista(sessionStorage.getItem('pag'),orden);
}

function buscar(){
    lista(sessionStorage.getItem('pag'),sessionStorage.getItem('orden'),$("#txtbusca").val());
}