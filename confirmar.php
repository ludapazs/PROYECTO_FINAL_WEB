<?php
$data = json_decode($_POST['array']);
require_once("conexion.php");
$idusuario = $data[0][1];
$resp=1;

try
{
    $cnx->beginTransaction();
    
    $rs = $cnx->query("SELECT max(id)+1 as ultimo FROM compra")  or $resp=0;
	$reg = $rs->fetchObject();
    $idcompra = $reg->ultimo;

    
    
	$a=$cnx->prepare("INSERT INTO compra (id,usuario,total) VALUES (:idcompra, :idusuario, cast(now() as date)+7)");
    $a->bindParam(":idusuario",$idusuario); 
    $a->bindParam(":idcompra",$idcompra); 
	$a->execute();	
	
	for($i = 0;$i<count($data);$i++){
        $b=$cnx->prepare("INSERT INTO detalle (idprestamo, idusuario, idlibro)	VALUES(:idcompra,:idusuario, :idproducto)");        

        $b->bindParam(":idusuario",$idusuario);
		$b->bindParam(":idcompra",$idcompra);
		$b->bindParam(":idproducto",($data[$i][2]));
        $b->execute();        
    }

	$cnx->commit();
} catch(PDOException $x) { 
	$cnx->rollBack();
	$resp=0; 
}
echo $resp;
?>

