<?php

namespace Destinia\PhpProject\controllers;

use Destinia\PhpProject\helpers\Utils;
use Destinia\PhpProject\models\Resource;
use Destinia\PhpProject\repositories\ApartmentRepository;
use Destinia\PhpProject\repositories\HotelRepository;

class Controller
{

    public function __construct()
    {
    }

    public function search($arg){

        if(!Utils::isArgValid($arg)) exit();

        $apartmentRepository = new ApartmentRepository();
        $hotelRepository = new HotelRepository();

        $apartments = $apartmentRepository->getLikeArg($arg);
        $hotels = $hotelRepository->getLikeArg($arg);

        $resources = [];

        foreach ($apartments as $a) {

            $benefits = $a['quantity'] . " apartamentos, " . $a['persons'] . " adultos";
            $address = $a['city'] . ", " . $a['province'];

            $resources[] = new Resource($a['noun'], $benefits, $address);
        }
        foreach ($hotels as $h) {

            $benefits = $h['stars'] . " estrellas, habitación " . $h['room'];
            $address = $h['city'] . ", " . $h['province'];

            $resources[] = new Resource($h['noun'], $benefits, $address);
        }

        return Utils::show($resources);
    }

}