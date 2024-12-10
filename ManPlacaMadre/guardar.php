<?php
require_once("conexion.php");
$id = $_POST['id'];
$mar = $_POST['jsma'];
$precio = $_POST['jsp'];
$modelo = $_POST['jsm'];
$imgp = $_POST['jsim'];
$img2 = $_POST['jsi2'];
$img3 = $_POST['jsi3'];
$img4 = $_POST['jsi4'];
$img5 = $_POST['jsi5'];

$sql="INSERT INTO placa_madre
		VALUES (NULL, '$mar','$modelo','$precio','$imgp','$img2','$img3','$img4','$img5')";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>