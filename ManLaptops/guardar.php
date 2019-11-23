<?php
require_once("conexion.php");
$nom = $_POST['jsnombre'];
$precio = $_POST['jsprecio'];
$fecha = $_POST['jsfecha'];
$presentacion = $_POST['jspresentacion'];
$categoria = $_POST['jscategoria'];

$sql="INSERT INTO producto (nombre, precio, fecha_vencimiento, idpresentacion, idcategoria) 
		VALUES ('$nom','$precio','$fecha','$presentacion','$categoria')";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>