<?php
require_once("conexion.php");
$id = $_POST['id'];


$sql="SELECT * FROM discossolidos WHERE id='$id'";
$res = $cnx->query($sql);
$reg = $res->fetchObject();

echo json_encode($reg);
?>