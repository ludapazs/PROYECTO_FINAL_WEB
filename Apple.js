function inicio(){
	lista();
}

function lista(){
	 $.ajax({
        url: 'Apple.php',
        dataType: 'text',
        type: 'post',
        data: {},
        success: function( data ){
            $('#divApple').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}