<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$procesador = $_POST['jspro'];
$video = $_POST['jsvid'];
$pantalla = $_POST['jspant'];
$almacenamiento = $_POST['jsalm'];
$precio = $_POST['jsprc'];

$sql="INSERT INTO laptop VALUES (null, '$nombre','$modelo', '$procesador', '$video', '$pantalla', '$almacenamiento', '$precio', 'temporal', 'temporal', 'temporal', 'temporal', 'temporal')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>