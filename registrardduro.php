<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$interfaz = $_POST['jsi'];
$sql="INSERT INTO discosduros VALUES (null, '$nombre','$modelo','$interfaz','$precio','sadasd', 'sadsadsad', 'afasfsa', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>