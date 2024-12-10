<?php
require_once("conexion.php");
$nom = $_POST['jsnombre'];
$precio = $_POST['jsprecio'];
$video = $_POST['jsv'];
$procesador = $_POST['jspro'];
$modelo = $_POST['jsm'];
$pantalla = $_POST['jspant'];
$almacenamiento = $_POST['jsa'];

$sql="INSERT INTO laptop 
		VALUES (NULL, '$nom','$modelo','$procesador','$video','$pantalla','$almacenamiento','$precio')";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>