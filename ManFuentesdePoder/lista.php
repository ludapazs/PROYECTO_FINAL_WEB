<?php
require_once("conexion.php");
$pag = $_POST['pag'];
$orden = $_POST['orden'];
if(isset($_POST['busca'])) $busca = $_POST['busca'];else $busca='';
$crxp=3;
$inicio = ($pag-1)*$crxp;

$sql="SELECT * from fuentesdepoder";
$res = $cnx->query($sql);
while($reg = $res->fetchObject()){
	echo "<tr>
			<td>$reg->id</td>
			<td>$reg->marca</td>
			<td>$reg->modelo</td>
			<td>$reg->corrientedeentrada</td>
			<td>$reg->precio</td>
			<td>$reg->imgprincipal</td>
			<td>$reg->img2</td>	
			<td>$reg->img3</td>
			<td>$reg->img4</td>
			<td>$reg->img5</td>
			<td>
				<button class='btn btn-info' type='button' onclick='editar($reg->id)'>Editar</button>
				<button class='btn btn-danger' type='button' onclick='eliminar($reg->id)'>Eliminar</button>
			</td>
		</tr>";
}
?>
