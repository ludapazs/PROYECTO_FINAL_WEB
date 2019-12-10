<?php
require "request/library/Requests.php";
Requests::register_autoloader();
require "culqi/lib/culqi.php";

$SECRET_KEY = "sk_test_DNO2WIApNvx0ECrt";

$culqi = new Culqi\Culqi(array('api_key' => $SECRET_KEY));
$charge = $culqi->Charges->create(
 array(
     "amount" => $_POST['precio'],
     "currency_code" => "PEN",
     "description" => $_POST['descripcion'],
     "email" => $_POST['email'],
     "source_id" => $_POST['token']
   )
);

echo 'exito';

?>