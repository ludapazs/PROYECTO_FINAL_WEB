<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$tipo = $_POST['jst'];
$capacidad = $_POST['jsc'];
$resolucion = $_POST['jsr'];
$sql="INSERT INTO tarjeta_video VALUES (null, '$nombre','$modelo','$tipo','$capacidad','$resolucion','$precio','sadasd', 'sadsadsad', 'afasfsa', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>