<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$velocidad = $_POST['jsv'];
$aire= $_POST['jsa'];
$sql="INSERT INTO refrigeracion VALUES (null, '$nombre','$modelo','$velocidad','$aire','sadasd', 'sadsadsad', 'afasfsa','$precio', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>