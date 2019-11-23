<?php
require_once("conexion.php");
$pag = $_POST['pag'];
$orden = $_POST['orden'];
if(isset($_POST['busca'])) $busca = $_POST['busca'];else $busca='';
$crxp=3;
$inicio = ($pag-1)*$crxp;

$sql="SELECT p.*, c.descripcion as dc, pre.descripcion as dp 
	FROM producto p, categoria c, presentacion pre 
	WHERE p.idcategoria=c.idcategoria AND p.idpresentacion=pre.idpresentacion AND p.nombre LIKE '$busca%'
	ORDER BY $orden
	LIMIT $inicio,$crxp";
$res = $cnx->query($sql);
while($reg = $res->fetchObject()){
	echo "<tr>
			<td>$reg->idproducto</td>
			<td>$reg->nombre</td>
			<td>$reg->precio</td>
			<td>$reg->fecha_vencimiento</td>
			<td>$reg->dp</td>
			<td>$reg->dc</td>
			<td>
				<button class='btn btn-info' type='button' onclick='editar($reg->idproducto)'>Editar</button>
				<button class='btn btn-danger' type='button' onclick='eliminar($reg->idproducto)'>Eliminar</button>
			</td>
		</tr>";
}
?>
