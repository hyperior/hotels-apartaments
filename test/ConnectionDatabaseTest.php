<?php

use Destinia\PhpProject\databases\Connection;
use PHPUnit\Framework\TestCase;

final class ConnectionDatabaseTest extends TestCase
{
    public function testConnectionWithDatabase(){

        $connection = Connection::getInstance();

        $this->assertTrue($connection !== null);
    }
}