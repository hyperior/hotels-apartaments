<?php

namespace Destinia\PhpProject\helpers;

class Utils
{
    public static function isArgValid($arg, $lengthMin = 3)
    {
        if (strlen($arg) < $lengthMin) {
            echo "El argumento debe tener más de " . $lengthMin . " letras.";
            return false;
        }

        return true;
    }

    public static function show($resources){

        $showing = 'Hospedajes Encontrados:' . PHP_EOL;

        // Imprimir cada recurso
        foreach ($resources as $r) {
            $showing .= '* ' . $r->noun . ', ' . $r->benefits . ', ' . $r->location . PHP_EOL;
        }

        return $showing;
    }

}