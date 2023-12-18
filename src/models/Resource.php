<?php

namespace Destinia\PhpProject\models;

class Resource
{

    public $noun;
    public $benefits;
    public $location;

    /**
     * @param $noun
     * @param $benefits
     * @param $location
     */
    public function __construct($noun, $benefits, $location)
    {
        $this->noun     = $noun;
        $this->benefits = $benefits;
        $this->location = $location;
    }


}