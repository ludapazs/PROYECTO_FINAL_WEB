function inicio(){
	lista();
}

function lista(){
	 $.ajax({
        url: 'Lenovo.php',
        dataType: 'text',
        type: 'post',
        data: {},
        success: function( data ){
            $('#divLenovo').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}