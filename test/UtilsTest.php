<?php

use Destinia\PhpProject\helpers\Utils;
use PHPUnit\Framework\TestCase;

final class UtilsTest extends TestCase
{

    public function testReturnFalseWhenArgLenIsLessThanMin(){

        $this->assertFalse(Utils::isArgValid('faro',5));

    }

    public function testShowResourceEmpty(){

        $resources = [];

        $expected = 'Hospedajes Encontrados:' . PHP_EOL;

        $showResult = Utils::show($resources);

        $this->assertEquals($showResult, $expected);

    }

}