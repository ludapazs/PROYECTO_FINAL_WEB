function enviar(){
	var nombre = document.getElementById("nombre").value;
    var modelo = document.getElementById("modelo").value;
    var precio = document.getElementById("precio").value;
    var tipo = document.getElementById("tipo").value;
    var capacidad = document.getElementById("capacidad").value;
    var resolucion = document.getElementById("resolucion").value;
	$.ajax({
        url: 'registrarvideo.php',
        type: 'post',
        data: {"jsnom":nombre,"jsmdl":modelo,"jsc":capacidad, "jsprc":precio,"jst":tipo,"jsr":resolucion},
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