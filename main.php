<?php

use Destinia\PhpProject\controllers\Controller;

require_once __DIR__ . '/vendor/autoload.php';

$key = $argv[1];

if($key == 'search'){

    $controller = new Controller();

    echo $controller->search(strtolower($argv[2]));

}else{
    echo "Primer argumento debe ser 'search'";
}