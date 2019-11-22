function enviar(){
	var nombre = document.getElementById("nombre").value;
    var modelo = document.getElementById("modelo").value;
    var precio = document.getElementById("precio").value;
    var interfaz = document.getElementById("interfaz").value;
    
	$.ajax({
        url: 'registrardduro.php',
        type: 'post',
        data: {"jsnom":nombre,"jsmdl":modelo, "jsprc":precio, "jsi":interfaz},
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