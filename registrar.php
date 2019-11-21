<?php

require_once("conexion.php");
$usu = $_POST['jsusu'];
$psw = sha1($_POST['jspsw']);

$sql="INSERT INTO usuario (usuario, password)
VALUES ('$usu','$psw')";
$resp=1;
$cnx->query($sql) or $resp=0;
echo $resp;

?>