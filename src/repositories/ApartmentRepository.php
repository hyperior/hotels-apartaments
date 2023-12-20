<?php

namespace Destinia\PhpProject\repositories;

use Destinia\PhpProject\databases\Connection;

class ApartmentRepository implements BaseRepository
{

    public function getLikeArg($search)
    {
        $connection = Connection::getInstance();

        $statement = $connection->getConnection()->prepare('SELECT * FROM apartments AS a
                                                                  INNER JOIN towns AS t ON a.town_id = t.id
                                                                  WHERE CONCAT(a.noun," ",t.city," ",t.province) LIKE ?');
        $statement->execute(['%' . $search . '%']);

        return $statement->fetchAll();
    }
}