<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$corriente = $_POST['jsc'];
$sql="INSERT INTO fuentesdepoder VALUES (null, '$nombre','$modelo','$corriente','$precio','sadasd', 'sadsadsad', 'afasfsa', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>