<?php
require_once("conexion.php");
if(isset($_POST['busca'])) $busca = $_POST['busca'];else $busca='';
$sql="SELECT * FROM fuentesdepoder WHERE modelo LIKE '$busca%'";
$res = $cnx->query($sql);
$cantreg = $res->rowCount();
$crxp = 3; // cant de reg por página
$cantpag = ceil($cantreg/$crxp);

for($i=1;$i<=$cantpag;$i++){
	echo "<td> <a href='#' class='btn btn-info' onclick=\"lista($i,sessionStorage.getItem('orden'))\">$i</a> </td>";
}
?>