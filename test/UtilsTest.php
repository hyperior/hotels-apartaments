<?php

use Destinia\PhpProject\helpers\Utils;
use PHPUnit\Framework\TestCase;

final class UtilsTest extends TestCase
{

    public function testReturnFalseWhenArgLenIsLessThanMin(){

        $this->assertFalse(Utils::isArgValid('faro',5));

    }


}