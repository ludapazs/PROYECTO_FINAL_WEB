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
    var modelo = $("#txtmodelo").val();
    var procesador = $("#txtprocesador").val();
    var video = $("#txtvideo").val();
    var pantalla = $("#txtpantalla").val();
    var almacenamiento = $("#txtalmacenamiento").val();
    var precio = $("#txtprecio").val();

    if(id>0){
        // Editar
        $.ajax({
            url: 'actualizar.php',
            dataType: 'text',
            type: 'post',
            data: {'id': id, 'jsnombre': nom, 'jsprecio': precio, 'jsm': modelo, 'jspro':procesador, 'jsv':video ,'jspant':pantalla,'jsa':almacenamiento   },
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
            data: {'id': id, 'jsnombre': nom, 'jsprecio': precio, 'jsm': modelo, 'jspro':procesador, 'jsv':video ,'jspant':pantalla,'jsa':almacenamiento   },   
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
            $("#txtnombre").val(datos.nombre);
            $("#txtmodelo").val(datos.modelo);
            $("#txtprocesador").val(datos.procesador);
            $("#txtvideo").val(datos.video);
            $("#txtpantalla").val(datos.pantalla);
            $("#txtalmacenamiento").val(datos.almacenamiento);
            $("#txtPrecio").val(datos.precio);
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
    $("#txtmodelo").val('');
    $("#txtprocesador").val('');
    $("#txtvideo").val('');
    $("#txtpantalla").val('');
    $("#txtalmacenamiento").val('');
    $("#txtPrecio").val('');
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