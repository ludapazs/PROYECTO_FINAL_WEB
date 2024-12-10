<?php 
  require_once("conexion.php");

  $sql = "SELECT * FROM laptop where id =".$_GET["codigo"];
  $res = $cnx->query($sql);
  $reg = $res->fetchObject();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="estilos.css">
    <script src="funciones.js"></script>
    <script src="carrito.js"></script>
    <title>CompuTronik</title>
</head>
<body class="d-flex flex-column">
    <!-- NAVBAR-->
<nav class="navbar navbar-expand-lg py-3 navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="index.html" class="navbar-brand">
        <!-- Logo Image -->
        <img src="https://res.cloudinary.com/mhmd/image/upload/v1557368579/logo_iqjuay.png" width="45" alt="" class="d-inline-block align-middle mr-2">
        <!-- Logo Text -->
        <span class="text-uppercase font-weight-bold">CompuTronik</span>
      </a>

      <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

      <div id="navbarSupportedContent" class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.html" class="nav-link">Inicio<span class="sr-only">(current)</span></a></li>
          <li class="nav-item"><a href="menulaptops.html" class="nav-link">Computadoras</a></li>
          <li class="nav-item"><a href="menupartes.html" class="nav-link">Piezas</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Subastas</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">Sobre Nosotros</a></li>
          <li class="nav-item"><a href="iniciarsesion.html" class="nav-link">Iniciar Sesión</a></li>
          <li class="nav-item"><a href="registrase.html" class="nav-link">Crear cuenta</a></li>
        </ul>
      </div>
    </div>

  </nav>
 
  <div class="row"></div>
<div class="container">

        <!-- Portfolio Item Heading -->
        <h1 class="my-4"><?php echo $reg->nombre;?>

        </h1>

        <!-- Portfolio Item Row -->
        <div class="row">

          <div class="col-md-8">
            <img class="img-fluid" src="imagenes/<?php echo $reg->imgprincipal;?>" alt="">
          </div>

          <div class="col-md-4">

            <h3 class="my-3">Caracteristicas:</h3>
            <ul>

    <li>Modelo: <?php echo $reg->modelo;?></li>
    <li>Procesador: <?php echo $reg->procesador;?></li>
    <li>Modelo tarjeta de video: <?php echo $reg->video;?></li>
    <li>Tamaño de la pantalla: <?php echo $reg->pantalla;?></li>
    <li>Almacenamiento: <?php echo $reg->almacenamiento;?></li>
    <p class="precio">S/<?php echo $reg->precio;?></p>
    <label for="txtcantidad">Cantidad:</label>
    <input type="number" name="txtcantidad" id="txtcantidad" class="form-control mb-4">
    <a class="btn btn-primary" onclick="agregar(<?php echo $reg->id.','.$reg->precio;?>)">Agregar a carrito</a>

            </ul>
          </div>

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->

        <div class="row">

          <div class="col-md-3 col-sm-6 mb-4">
            <a href="#">
                  <img class="img-fluid" src="imagenes/<?php echo $reg->img2;?>" alt="">
                </a>
          </div>

          <div class="col-md-3 col-sm-6 mb-4">
            <a href="#">
                  <img class="img-fluid" src="imagenes/<?php echo $reg->img3;?>" alt="">
                </a>
          </div>

          <div class="col-md-3 col-sm-6 mb-4">
            <a href="#">
                  <img class="img-fluid" src="imagenes/<?php echo $reg->img4;?>" alt="">
                </a>
          </div>
          <div class="col-md-3 col-sm-6 mb-4">
              <a href="#">
                    <img class="img-fluid" src="imagenes/<?php echo $reg->img5;?>" alt="">
                  </a>
            </div>


        </div>
        <!-- /.row -->





      </div>
      <!-- /.container -->
              <!-- Footer -->
  <footer class="bg-dark">
    <div class="container py-3">
      <div class="row py-4">
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0"><!-- <img src="https://res.cloudinary.com/mhmd/image/upload/v1557368579/logo_iqjuay.png" alt="" width="45" class="mb-3"> -->
            <!-- <h6 class="text-uppercase font-weight-bold mb-4">Sobre Nosotros</h6> -->
          <p class="font-italic text-muted"> <b class="text-white">CompuTronik®</b> <br> <br> Somos una empresa comprometida con entregarte productos de calidad y que se acomoden a tus necesidades.</p>
          <ul class="list-inline mt-4">
            <li class="list-inline-item"><a href="https://twitter.com/" target="_blank" title="twitter"><i class="fa fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="https://www.facebook.com/" target="_blank" title="facebook"><i class="fa fa-facebook"></i></a></li>
            <li class="list-inline-item"><a href="https://www.instagram.com/" target="_blank" title="instagram"><i class="fa fa-instagram"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-4 col-md-4 mb-4 mb-lg-0">
          <h6 class="text-uppercase font-weight-bold mb-4 text-white">Contáctanos</h6>
          <ul class="list-unstyled mb-0">
            <li class="mb-2 text-muted"><i class="fa fa-phone"></i> 987654321</li>
            <li class="mb-2 text-muted"><i class="fa fa-envelope"></i> computronik@gmail.com</li>
            <!-- <li class="mb-2"><a href="#" class="text-muted">Stores</a></li> -->
          </ul>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
          <h6 class="text-uppercase font-weight-bold mb-4 text-white">Navega por nuestra página</h6>
          <ul class="list-unstyled mb-0">
            <li class="mb-2"><a href="#" class="text-muted">Computadoras</a></li>
            <li class="mb-2"><a href="#" class="text-muted">Piezas</a></li>
            <li class="mb-2"><a href="#" class="text-muted">Subastas</a></li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Copyrights -->
    <div class="bg-secondary py-3">
      <div class="container text-center">
        <p class="text-black mb-0 py-2">© CompuTronik All rights reserved.</p>
      </div>
    </div>
  </footer>
  <!-- End -->
</body>
</html>
