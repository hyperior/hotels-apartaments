<?php

namespace Destinia\PhpProject\configurations;

class Databases
{
    public function __construct()
    {
    }

    public static function getMysqlConfig()
    {
        return [
            'driver' => 'mysql',
            'host' => 'localhost',
            'database' => 'destinia_test',
            'username' => 'root',
            'password' => '',
        ];
    }

}