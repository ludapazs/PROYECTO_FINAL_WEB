function enviar(){
	var usu = document.getElementById("usuario").value;
    var pssw = document.getElementById("password").value;
    
	$.ajax({
        url: 'registrar.php',
        type: 'post',
        data: {"jsusu":usu,"jspsw":pssw},
        success: function( data ){
			console.log(data);
			if(data==1){
                console.log("Registro Correcto!");
			}           
        },
        error: function( jqXhr, textStatus, error ){
            console.log( error );
        }
    });
}