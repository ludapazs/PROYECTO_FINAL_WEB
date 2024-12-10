<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$capacidad = $_POST['jsc'];
$sql="INSERT INTO ram VALUES (null, '$nombre','$modelo','$capacidad','$precio','sadasd', 'sadsadsad', 'afasfsa', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>