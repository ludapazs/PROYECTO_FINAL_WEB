<?php
require_once("conexion.php");
$id = $_POST['id'];
$nom = $_POST['jsnombre'];
$precio = $_POST['jsprecio'];
$video = $_POST['jsv'];
$procesador = $_POST['jspro'];
$modelo = $_POST['jsm'];
$pantalla = $_POST['jspant'];
$almacenamiento = $_POST['jsa'];

$sql="UPDATE  laptop SET nombre = '$nom', modelo = '$modelo', procesador = '$procesador', video = '$video', pantalla = '$pantalla', almacenamiento = '$almacenamiento', precio = '$precio' WHERE id = '$id'";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>