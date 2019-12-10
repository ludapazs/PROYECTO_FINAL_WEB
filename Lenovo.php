<?php
require_once("conexion.php");

$sql = "SELECT * FROM laptop where UPPER(nombre) like UPPER('%LENOVO%')";
$res = $cnx->query($sql);

while($reg = $res->fetchObject()){
    $ruta = $reg->imgprincipal;
    $codprod = $reg->id;
    echo "<div class='row'>
        <div class='col-md-4'>
        <a href='LaptopDetalle.php?codigo=$codprod'>
                <img class='img-fluid rounded mb-3 mb-md-0'
                    src='imagenes/$ruta'
                    alt=''>
            </a>
        </div>
        <div class='col-md-6'>
            <h3>$reg->nombre</h3>
            <li>Modelo: $reg->modelo</li>
            <li>Procesador: $reg->procesador</li>
            <li>Modelo tarjeta de video: $reg->video</li>
            <li>Tamaño de la pantalla: $reg->pantalla</li>
            <li>Almacenamiento: $reg->almacenamiento</li>
            <p class='precio'>S/. $reg->precio</p>
            <br>
            <a class='btn btn-primary' href='#'>Agregar a carrito</a>
        </div>
    </div> 
    <hr>";
}
?>