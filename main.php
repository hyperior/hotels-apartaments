<?php

use Destinia\PhpProject\controllers\Controller;

require_once __DIR__ . '/vendor/autoload.php';

if(!isset($argv[1]) || !isset($argv[2])) exit('La sentencia no posee los argumentos necesarios');

if($argv[1] == 'search'){

    $controller = new Controller();

    echo $controller->search(strtolower($argv[2]));

}else{
    exit("Primer argumento debe ser 'search'");
}