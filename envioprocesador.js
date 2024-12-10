function enviar(){
	var nombre = document.getElementById("nombre").value;
    var modelo = document.getElementById("modelo").value;
    var precio = document.getElementById("precio").value;
    var hilos = document.getElementById("hilos").value;
    var nucleos = document.getElementById("nucleos").value;

	$.ajax({
        url: 'registrarprocesador.php',
        type: 'post',
        data: {"jsnom":nombre,"jsmdl":modelo,"jsn":nucleos,"jsh":hilos, "jsprc":precio},
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