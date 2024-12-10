<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$nucleos = $_POST['jsn'];
$hilos = $_POST['jsh'];
$precio = $_POST['jsprc'];
$sql="INSERT INTO procesador VALUES (null, '$nombre','$modelo','$nucleos','$hilos','$precio','sadasd', 'sadsadsad', 'afasfsa', 'safsadf', 'fsafsad')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>