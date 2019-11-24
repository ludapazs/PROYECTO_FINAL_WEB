<?php
require_once("conexion.php");
$id = $_POST['id'];
$sql="DELETE FROM laptop WHERE id='$id'";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;
?>