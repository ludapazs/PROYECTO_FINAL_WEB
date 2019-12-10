
function agregar(id, precio){
    var idusuario = sessionStorage.getItem("idusuario");
    var cantidad = $("#txtcantidad").val();
    var total = cantidad * precio;
    console.log("idusuario: ", idusuario, "cantidad: ", cantidad);

    guardarItem(parseInt(idusuario),parseInt(id), cantidad, precio, total);
}

function guardarItem(idusuario, idlaptop, cantidad, precio, total) {
    //Verificar si nuestra variable datos no existe
    if (localStorage.getItem('datos') == null) {
      var arrayFila = [1,parseInt(idusuario), parseInt(idlaptop), parseInt(cantidad), parseFloat(precio), parseFloat(total)];
      var arrayTabla = [arrayFila];
  
      var arrayTablaJSON = JSON.stringify(arrayTabla);
      localStorage.setItem("datos",arrayTablaJSON);
    }else{
      var arrayTabla = JSON.parse(localStorage.getItem('datos'));
      var position = 0;
      for(var i=0;i<arrayTabla.length;i++){
        position= i+1;
        arrayTabla[i][0]=position;
      }
  
      //INSERTAR A ARRAY TABLA
      var arrayFilaInsertar = [position+1,idusuario, idlaptop, cantidad, precio, total];
      console.log(arrayFilaInsertar);
      arrayTabla.push(arrayFilaInsertar);
  
      //Convertir arrayTabla a Json(Cadena) y guardar en Local Storage
      localStorage.setItem('datos',JSON.stringify(arrayTabla));
    }
  }