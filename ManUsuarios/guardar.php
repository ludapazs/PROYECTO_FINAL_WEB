<?php
require_once("conexion.php");
$nom = $_POST['jsnombre'];
$passw = $_POST['jsp'];


$sql="INSERT INTO laptop 
		VALUES (NULL, '$nom','$passw')";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>