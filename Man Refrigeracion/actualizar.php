<?php
require_once("conexion.php");
$id = $_POST['id'];
$mar = $_POST['jsma'];
$precio = $_POST['jsp'];
$nucleos = $_POST['jsn'];
$hilos = $_POST['jsh'];
$modelo = $_POST['jsm'];
$imgp = $_POST['jsim'];
$img2 = $_POST['jsi2'];
$img3 = $_POST['jsi3'];
$img4 = $_POST['jsi4'];
$img5 = $_POST['jsi5'];

$sql="UPDATE  refrigeracion SET marca = '$mar', modelo = '$modelo', precio = '$precio', velocidad = '$nucleos', flujodeaire = '$hilos',imgprincipal = '$imgp', img2 = '$img2', img3 = '$img3' , img4 = '$img4', img5 = '$img5' WHERE id = '$id'";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>