<?php
require_once("conexion.php");
// Recibo los datos de la imagen
$nombre_imgp = $_FILES['imagenp']['name'];
$tipop = $_FILES['imagenp']['type'];
$tamanop = $_FILES['imagenp']['size'];

$nombre_imgd1 = $_FILES['imagend1']['name'];
$tipod1 = $_FILES['imagend1']['type'];
$tamanod1 = $_FILES['imagend1']['size'];
 
//Si existe imagen y tiene un tamaño correcto
if (($nombre_imgp == !NULL) && ($tamanop <= 200000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($tipop == "image/gif")
   || ($tipop == "image/jpeg")
   || ($tipop == "image/jpg")
   || ($tipop == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directoriop = $_SERVER['DOCUMENT_ROOT'].'/proyecto';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagenp']['tmp_name'],$directoriop.$nombre_imgp);
      $sql = "UPDATE placa_madre SET imgprincipal = '$nombre_imgp' where id = (select MAX(id) from placa_madre)";
      $resp=1;
        $cnx->query($sql) or $resp=0;
        echo "<p>Subida satisfactoria $resp</p>";
    }
    else
    {
       //si no cumple con el formato
       echo "No se puede subir una imagen con ese formato ";
    }
}
else
{
   //si existe la variable pero se pasa del tamaño permitido
   if($nombre_imgp == !NULL) echo "La imagen es demasiado grande ";
}



?>