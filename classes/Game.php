<?php

Class Game
{
    public function playerOne()
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $count = "SELECT COUNT(id) FROM cards";
        $countResult = $mysqli->query($count);
        $countResultFinal = $countResult->fetch_assoc();

        $ids = [
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
        ];
        $hand1 = Card::hand($ids[0], $ids[1], $ids[2], $ids[3], $ids[4]);
    }

    public function playerTwo()
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $count = "SELECT COUNT(id) FROM cards";
        $countResult = $mysqli->query($count);
        $countResultFinal = $countResult->fetch_assoc();

        $ids = [
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
            rand(1, $countResultFinal["COUNT(id)"]),
        ];
        $hand2 = Card::hand($ids[0], $ids[1], $ids[2], $ids[3], $ids[4]);
    }
}

?>
