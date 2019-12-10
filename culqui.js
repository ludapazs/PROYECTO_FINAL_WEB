  
  Culqi.publicKey = 'pk_test_tAC1psF9nP5BtX9V';

  
    var descripcion = "";
    var precio = "";

  $('#buyButton').on('click', function(e) {
    // Abre el formulario con la configuración en Culqi.settings
    
    descripcion = "Compra "+ $("#spnombres").val();
    precio = $("#total").val();

    Culqi.settings({
    title: descripcion,
    currency: 'PEN',
    description: 'Laptop CompuTronik',
    amount: precio
    });
    
    Culqi.open();
    e.preventDefault();
    });

    function culqi() {
        if (Culqi.token) { // ¡Objeto Token creado exitosamente!
            var token = Culqi.token.id;

            var email = Culqi.token.email;
            //En esta linea de codigo debemos enviar el "Culqi.token.id"
            //hacia tu servidor con Ajax
            var data = {descripcion:descripcion,precio:precio,token:token,email:email};
            var url = "proceso.php";

            $.post(url,data,function(res){
                alert(res);
            });
                
            

        } else { // ¡Hubo algún problema!
            // Mostramos JSON de objeto error en consola
            console.log(Culqi.error);
            alert(Culqi.error.user_message);
    }
};
