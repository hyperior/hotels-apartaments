<?php

namespace Destinia\PhpProject\repositories;

use Destinia\PhpProject\databases\Connection;

class HotelRepository implements BaseRepository
{

    public function getLikeArg($search)
    {
        $connection = Connection::getInstance();

        $statement = $connection->getConnection()->prepare('SELECT * FROM hotels AS h
                                                            INNER JOIN rooms AS r ON r.hotel_id = h.id
                                                            INNER JOIN towns AS t ON h.town_id = t.id
                                                            WHERE r.availability = 0 
                                                            AND CONCAT(h.noun," ",t.city," ",t.province," ",r.room) LIKE ?');
        $statement->execute(['%' . $search . '%']);

        return $statement->fetchAll();
    }
}