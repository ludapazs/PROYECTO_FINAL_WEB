<?php
require_once("conexion.php");
$usuario = $_POST['usuario'];
$passw 	= sha1($_POST['password']);

$sql = "SELECT * FROM usuario 
		WHERE usuario='$usuario' AND password='$passw'";

$rs = $cnx->query($sql) or die($sql);
$cantreg = $rs->rowCount();

if($cantreg==1) {
	session_start();
	$reg = $rs->fetchObject();
	$_SESSION['id']=$reg->id;
	$_SESSION['usuario']=$reg->usuario;
	header("location: index.html");
}
else header("location: index.html");
?>