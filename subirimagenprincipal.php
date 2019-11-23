<?php
require_once("conexion.php");
// Recibo los datos de la imagen
$nombre_imgp = $_FILES['imagenp']['name'];
$tipop = $_FILES['imagenp']['type'];
$tamanop = $_FILES['imagenp']['size'];

 
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
      $directoriop = 'imagenes';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagenp']['tmp_name'],$directoriop.'/'.$nombre_imgp);

      $sql = "UPDATE discosduros SET imgprincipal = '$nombre_imgp' where id = (select MAX(id) from discosduros)";
      $resp=1;
        $cnx->query($sql) or $resp=0;
        echo "<p>Subida satisfactoria $resp $sql</p>";
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