<?php
require_once("conexion.php");
$id = $_POST['id'];
$mar = $_POST['jsma'];
$precio = $_POST['jsp'];
$nucleos = $_POST['jsn'];
$hilos = $_POST['jsh'];
$capacidad = $_POST['jsc'];
$modelo = $_POST['jsm'];
$imgp = $_POST['jsim'];
$img2 = $_POST['jsi2'];
$img3 = $_POST['jsi3'];
$img4 = $_POST['jsi4'];
$img5 = $_POST['jsi5'];

$sql="INSERT INTO refrigeracion
		VALUES (NULL, '$mar','$modelo','$nnucleos','$capacidad','$nhilos','$imgp','$img2','$img3','$img4','$img5')";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>