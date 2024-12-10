function inicio(){
	lista();
}

function lista(){
	 $.ajax({
        url: 'HP.php',
        dataType: 'text',
        type: 'post',
        data: {},
        success: function( data ){
            $('#divHP').html( data );
        },
        error: function( jqXhr, textStatus, errorThrown ){
            console.log( errorThrown );
        }
    });
}