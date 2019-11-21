function enviar(){
	var nombre = document.getElementById("nombre").value;
    var modelo = document.getElementById("modelo").value;
    var precio = document.getElementById("precio").value;

    
	$.ajax({
        url: 'registrarLaptop.php',
        type: 'post',
        data: {"jsnom":nombre,"jsmdl":modelo, "jsprc":precio, "jsimgp":imgp, "jsimg2":img2, "jsimg3":img3, "jsimg4":img4,"jsimg5":img5},
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