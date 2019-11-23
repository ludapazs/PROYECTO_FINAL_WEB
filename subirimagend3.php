<?php
$nombre_imgd3 = $_FILES['imagend3']['name'];
$tipod3 = $_FILES['imagend3']['type'];
$tamanod3 = $_FILES['imagend3']['size'];


if (($nombre_imgd3 == !NULL) && ($tamanod3 <= 200000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($tipod3 == "image/gif")
   || ($tipod3 == "image/jpeg")
   || ($tipod3 == "image/jpg")
   || ($tipod3 == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directoriod3 = $_SERVER['DOCUMENT_ROOT'].'/proyecto';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagend2']['tmp_name'],$directoriod3.$nombre_imgd3);
      $sql = "UPDATE placa_madre SET img4 = '$nombre_imgd3' where id = (select MAX(id) from placa_madre)";
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