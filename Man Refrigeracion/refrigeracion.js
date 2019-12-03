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
    var mar = $("#txtmarca").val();
    var modelo = $("#txtmodelo").val();
    var nucleos = $("#txtvelocidad").val();
    var hilos = $("#txtflujo").val();
    var precio = $("#txtprecio").val();
    var imgp = $("#txtimgp").val();
    var img2 = $("#txtimg2").val();
    var img3 = $("#txtimg3").val();
    var img4 = $("#txtimg4").val();
    var img5 = $("#txtimg5").val();

    if(id>0){
        // Editar
        $.ajax({
            url: 'actualizar.php',
            dataType: 'text',
            type: 'post',
            data: {'id': id, 'jsma': mar, 'jsn': nucleos, 'jsm': modelo,'jsh': hilos, 'jsp':precio, 'jsim':imgp ,'jsi2':img2,'jsi3':img3,'jsi4':img4,'jsi5':img5  },
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
            data: {'id': id, 'jsma': mar,'jsn': nucleos, 'jsm': modelo,'jsh': hilos, 'jsp':precio, 'jsim':imgp ,'jsi2':img2,'jsi3':img3,'jsi4':img4,'jsi5':img5  },   
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
            $("#txtmarca").val(datos.marca);
            $("#txtmodelo").val(datos.modelo);
            $("#txtvelocidad").val(datos.velocidad);
            $("#txtflujo").val(datos.flujodeaire);
            $("#txtprecio").val(datos.precio);
            $("#txtimgp").val(datos.imgprincipal);
            $("#txtimg2").val(datos.img2);
            $("#txtimg3").val(datos.img3);
            $("#txtimg4").val(datos.img4);
            $("#txtimg5").val(datos.img5);
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
    $("#txtmarca").val('');
    $("#txtmodelo").val('');
    $("#txtvelocidad").val('');
    $("#txtflujo").val('');
    $("#txtprecio").val('');
    $("#txtimgp").val('');
    $("#txtimg2").val('');
    $("#txtimg3").val('');
    $("#txtimg4").val('');
    $("#txtimg5").val('');
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