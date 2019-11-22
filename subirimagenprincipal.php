<?php
require_once("conexion.php");
// Recibo los datos de la imagen
$nombre_imgp = $_FILES['imagenp']['name'];
$tipop = $_FILES['imagenp']['type'];
$tamanop = $_FILES['imagenp']['size'];

$nombre_imgd1 = $_FILES['imagend1']['name'];
$tipod1 = $_FILES['imagend1']['type'];
$tamanod1 = $_FILES['imagend1']['size'];

$nombre_imgd2 = $_FILES['imagend2']['name'];
$tipod2 = $_FILES['imagend2']['type'];
$tamanod2 = $_FILES['imagend2']['size'];

$nombre_imgd3 = $_FILES['imagend3']['name'];
$tipod3 = $_FILES['imagend3']['type'];
$tamanod3 = $_FILES['imagend3']['size'];


$nombre_imgd4 = $_FILES['imagend4']['name'];
$tipod4 = $_FILES['imagend4']['type'];
$tamanod4 = $_FILES['imagend4']['size'];
 
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
      move_uploaded_file($_FILES['imagend2']['tmp_name'],$directoriod1.$nombre_imgd1);
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