<?php
require_once("conexion.php");
$id = $_POST['id'];
$sql="DELETE FROM discossolidos WHERE id='$id'";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;
?>