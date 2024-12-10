function login(){
	var usuario = $("#txtusuario").val();
	var pas = $("#txtpassword").val();
	$.ajax({
        url: 'login.php',
        dataType: 'text',
        type: 'post',
        data: {'usuario':usuario, 'pass':pas},
        success: function( data ){
            console.log(data);
            var datos = JSON.parse(data);
            sessionStorage.setItem("idusuario",datos.id);
            sessionStorage.setItem("nombres",datos.usuario);
            if(datos.ok==1){
                alert("Bienvenido!");
                window.location='menulaptops.html';
            } else {
                alert("Datos incorrectos");
            }
        },
        error: function( jqXhr, textStatus, errorThrown ){
            alert( errorThrown );
            window.location='index.html';
        }
    });
}