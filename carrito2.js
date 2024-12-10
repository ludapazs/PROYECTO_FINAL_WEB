$(document).ready(function () {
    listar();

    // $("#Confirmar").click(function () {

    //     if (window.localStorage !== undefined) {
    //         var array = JSON.parse(localStorage.getItem('datos'));

    //         $.ajax({
    //             type: "POST",
    //             url: "confirmar.php",
    //             data: { 'array': JSON.stringify(array) },
    //             success: function (data) {
    //                 if (data == 1) {
    //                     alert("Libros subidos satisfactoriamente");
    //                     location.href = "prestamo.html";
    //                     localStorage.clear();
    //                 }else{
    //                     alert(data);
    //                 }
    //             },
    //             error: function (jqXhr, textStatus, errorThrown) {
    //                 console.log(errorThrown);
    //             }
    //         });
    //     }
    // });

});

function listar() {
    if (localStorage.getItem('datos') != null) {
        var arrayTabla = JSON.parse(localStorage.getItem('datos'));
        $('#tbl').html("");
        var total = 0.0;
        for (var i = 0; i < arrayTabla.length; i++) {
            var fila = "";
            
            fila += "<tr>";
            fila += "<td>" + arrayTabla[i][0] + "</td>";
            fila += "<td>" + arrayTabla[i][1] + "</td>";
            fila += "<td>" + arrayTabla[i][2] + "</td>";
            fila += "<td>" + arrayTabla[i][3] + "</td>";
            fila += "<td>" + arrayTabla[i][4] + "</td>";
            fila += "<td>" + arrayTabla[i][5] + "</td>";
            fila += "</tr>";
            total = total + parseFloat(arrayTabla[i][5]);
            $('#tbl').append(fila);
        }
        var mostrarTotal = "";
        var totalculqui = total *100;
        mostrarTotal += "<tr>";
        mostrarTotal += "<th colspan='3'>Total de la compra: </th>";
        mostrarTotal += "<th>";
        mostrarTotal += total;
        mostrarTotal += "</th>";
        mostrarTotal += "<input type='hidden' id='total' value='"+totalculqui+"'>";
        mostrarTotal += "</tr>";
        $('#tbl').append(mostrarTotal);
        
    }
}