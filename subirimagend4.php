<?php
$nombre_imgd4 = $_FILES['imagend4']['name'];
$tipod4 = $_FILES['imagend4']['type'];
$tamanod4 = $_FILES['imagend4']['size'];



if (($nombre_imgd4 == !NULL) && ($tamanod4 <= 200000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if (($tipod4 == "image/gif")
   || ($tipod4 == "image/jpeg")
   || ($tipod4 == "image/jpg")
   || ($tipod4 == "image/png"))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directoriod4 = $_SERVER['DOCUMENT_ROOT'].'/proyecto';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagend4']['tmp_name'],$directoriod4.$nombre_imgd4);
      $sql = "UPDATE placa_madre SET img5 = '$nombre_imgd4' where id = (select MAX(id) from placa_madre)";
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