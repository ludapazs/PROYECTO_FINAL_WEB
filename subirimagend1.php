<?php
$nombre_imgd1 = $_FILES['imagend1']['name'];
$tipod1 = $_FILES['imagend1']['type'];
$tamanod1 = $_FILES['imagend1']['size'];


if (($nombre_imgd1 == !NULL) && ($tamanod1 <= 200000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($tipod1 == "image/gif")
   || ($tipod1 == "image/jpeg")
   || ($tipod1 == "image/jpg")
   || ($tipod1 == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directoriod1 = $_SERVER['DOCUMENT_ROOT'].'/proyecto';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagend1']['tmp_name'],$directoriod1.$nombre_imgd1);
      $sql = "UPDATE placa_madre SET img2 = '$nombre_imgd1' where id = (select MAX(id) from placa_madre)";
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
   if($nombre_imgd2 == !NULL) echo "La imagen es demasiado grande ";
}
?>