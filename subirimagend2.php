<?php
$nombre_imgd2 = $_FILES['imagend2']['name'];
$tipod2 = $_FILES['imagend2']['type'];
$tamanod2 = $_FILES['imagend2']['size'];


if (($nombre_imgd2 == !NULL) && ($tamanod2 <= 200000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($tipod2 == "image/gif")
   || ($tipod2 == "image/jpeg")
   || ($tipod2 == "image/jpg")
   || ($tipod2 == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directoriod2 = $_SERVER['DOCUMENT_ROOT'].'/proyecto';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagend2']['tmp_name'],$directoriod2.$nombre_imgd2);
      $sql = "UPDATE placa_madre SET img3 = '$nombre_imgd2' where id = (select MAX(id) from placa_madre)";
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