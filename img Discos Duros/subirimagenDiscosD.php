<?php
require_once("conexion.php");
// Recibo los datos de la imagen
$nombre_imgp = $_FILES['imagenp']['name'];
$tipop = $_FILES['imagenp']['type'];
$tamanop = $_FILES['imagenp']['size'];

$nombre_img2 = $_FILES['imagen2']['name'];
$tipo2 = $_FILES['imagen2']['type'];
$tamano2 = $_FILES['imagen2']['size'];

$nombre_img3 = $_FILES['imagen3']['name'];
$tipo3 = $_FILES['imagen3']['type'];
$tamano3 = $_FILES['imagen3']['size'];

$nombre_img4 = $_FILES['imagen4']['name'];
$tipo4 = $_FILES['imagen4']['type'];
$tamano4 = $_FILES['imagen4']['size'];

$nombre_img5 = $_FILES['imagen5']['name'];
$tipo5 = $_FILES['imagen5']['type'];
$tamano5 = $_FILES['imagen5']['size'];
 
//Si existe imagen y tiene un tamaño correcto
if (($nombre_imgp == !NULL) && ($tamanop <= 300000) && ($nombre_img2 == !NULL) && ($tamano2 <= 300000) && ($nombre_img3 == !NULL) && ($tamano3 <= 300000) && ($nombre_img4 == !NULL) && ($tamano4 <= 300000) && ($nombre_img5 == !NULL) && ($tamano5 <= 300000))
{
   //indicamos los formatos que permitimos subir a nuestro servidor
   if ((($tipop == "image/gif") || ($tipop == "image/jpeg") || ($tipop == "image/jpg") || ($tipop == "image/png")) 
   && (($tipo2 == "image/gif") || ($tipo2 == "image/jpeg") || ($tipo2 == "image/jpg") || ($tipo2 == "image/png")) 
   && (($tipo3 == "image/gif") || ($tipo3 == "image/jpeg") || ($tipo3 == "image/jpg") || ($tipo3 == "image/png"))
   && (($tipo4 == "image/gif") || ($tipo4 == "image/jpeg") || ($tipo4 == "image/jpg") || ($tipo4 == "image/png"))
   && (($tipo5 == "image/gif") || ($tipo5 == "image/jpeg") || ($tipo5 == "image/jpg") || ($tipo5 == "image/png")))
   {
      // Ruta donde se guardarán las imágenes que subamos
      $directorio = 'imagenes';
      // Muevo la imagen desde el directorio temporal a nuestra ruta indicada anteriormente
      move_uploaded_file($_FILES['imagenp']['tmp_name'],$directorio.'/'.$nombre_imgp);
      move_uploaded_file($_FILES['imagen2']['tmp_name'],$directorio.'/'.$nombre_img2);
      move_uploaded_file($_FILES['imagen3']['tmp_name'],$directorio.'/'.$nombre_img3);
      move_uploaded_file($_FILES['imagen4']['tmp_name'],$directorio.'/'.$nombre_img4);
      move_uploaded_file($_FILES['imagen5']['tmp_name'],$directorio.'/'.$nombre_img5);

      $sql = "UPDATE discosduros SET imgprincipal = '$nombre_imgp', img2 = '$nombre_img2', img3 = '$nombre_img3', img4 = '$nombre_img4', img5 = '$nombre_img5'  where id = (select MAX(id) from discosduros)";
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
   if(($nombre_imgp == !NULL) && ($nombre_img2 == !NULL) && ($nombre_img3 == !NULL) && ($nombre_img4 == !NULL) && ($nombre_img5 == !NULL)) echo "La imagen es demasiado grande ";
}




?>