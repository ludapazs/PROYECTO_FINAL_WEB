function inicio(){
	lista();
}

function lista(){
	 $.ajax({
        url: 'ACER.php',
        dataType: 'text',
        type: 'post',
        data: {},
        success: function( data ){
            $('#divAcer').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}