function enviar(){
	var nombre = document.getElementById("nombre").value;
    var modelo = document.getElementById("modelo").value;
    var procesador = document.getElementById("procesador").value;
    var video = document.getElementById("video").value;
    var pantalla = document.getElementById("pantalla").value;
    var almacenamiento = document.getElementById("almacenamiento").value;
    var precio = document.getElementById("precio").value;
    
	$.ajax({
        url: 'registrarLaptop.php',
        type: 'post',
        data: {"jsnom":nombre,"jsmdl":modelo, "jspro":procesador, "jsvid":video, "jspant":pantalla, "jsalm":almacenamiento, "jsprc":precio},
        success: function( data ){
			console.log(data);
			if(data==1){
                console.log("Registro Correcto!");
			}  else{
                console.log("Hay un error" , data)
            }         
        },
        error: function( jqXhr, textStatus, error ){
            console.log( error );
        }
    });
}