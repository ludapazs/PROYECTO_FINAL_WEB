<?php
require_once("conexion.php");
$usuario = $_POST['usuario'];
$passw 	= sha1($_POST['pass']);

$sql = "SELECT * FROM usuario 
		WHERE usuario='$usuario' AND password='$passw'";

$rs = $cnx->query($sql);
$cantreg = $rs->rowCount();

if($cantreg==1) {
	$reg = $rs->fetchObject();
	$datos['ok'] = 1;
	$datos['id']=$reg->id;
	$datos['usuario']=$reg->usuario;
}
else $datos['ok'] = 0;

echo json_encode($datos);
?>