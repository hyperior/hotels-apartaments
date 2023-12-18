<?php

namespace Destinia\PhpProject\repositories;

use Destinia\PhpProject\databases\Connection;

class ApartmentRepository implements BaseRepository
{

    public function getLikeArg($search)
    {
        $connection = Connection::getInstance();

        $statement = $connection->getConnection()->prepare('SELECT * FROM apartments WHERE CONCAT(noun," ",address) LIKE ?');
        $statement->execute(['%' . $search . '%']);

        return $statement->fetchAll();
    }
}