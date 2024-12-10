<?php
require_once("conexion.php");
$pag = $_POST['pag'];
$orden = $_POST['orden'];
if(isset($_POST['busca'])) $busca = $_POST['busca'];else $busca='';
$crxp=3;
$inicio = ($pag-1)*$crxp;

$sql="SELECT * from laptop";
$res = $cnx->query($sql);
while($reg = $res->fetchObject()){
	echo "<tr>
			<td>$reg->id</td>
			<td>$reg->nombre</td>
			<td>$reg->modelo</td>
			<td>$reg->procesador</td>
			<td>$reg->video</td>
			<td>$reg->pantalla</td>
			<td>$reg->almacenamiento</td>	
			<td>$reg->precio</td>
			<td>
				<button class='btn btn-info' type='button' onclick='editar($reg->id)'>Editar</button>
				<button class='btn btn-danger' type='button' onclick='eliminar($reg->id)'>Eliminar</button>
			</td>
		</tr>";
}
?>
