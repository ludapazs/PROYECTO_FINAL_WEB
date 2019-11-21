<?php

require_once("conexion.php");

$nombre = $_POST['jsnom'];
$modelo = $_POST['jsmdl'];
$precio = $_POST['jsprc'];
$imgp = $_POST['jsimg'];
$img2 = $_POST['jsimg2'];
$img3 = $_POST['jsimg3'];
$img4 = $_POST['jsimg4'];
$img5 = $_POST['jsimg5'];
$sql="INSERT INTO placa_madre VALUES (null, '$nombre','$modelo','$precio','$imgp','$img2','$img3','$img4','$img5')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>