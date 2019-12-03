<?php
require_once("conexion.php");
$id = $_POST['id'];
$nom = $_POST['jsnombre'];
$passw = $_POST['jsp'];


$sql="UPDATE  usuario SET usuario = '$nom', password = '$passw' WHERE id = '$id'";
$resp=1;
$cnx->query($sql) or $resp=$sql;
echo $resp;
?>