<?php

class Card
{
    public $name;
    public $scoreUp;
    public $scoreRight;
    public $scoreDown;
    public $scoreLeft;
    public $level;
    public $path;
    public $element;
    public $id;


    public function __construct($id)
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql =  "SELECT * FROM cards WHERE id=" . $id;
        $result = $mysqli->query($sql);
        $card = $result->fetch_assoc();
        echo "<img src='./cards/" . $card['path'] . ".png'>";

        $name = $card['name'];
        $scoreUp = $card['scoreUp'];
        $scoreDown = $card['scoreDown'];
        $scoreLeft = $card['scoreLeft'];
        $scoreRight = $card['scoreRight'];
    }


    public function getUp()
    {
        return $this->scoreUp;
    }

    public static function allCards()
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql =  "SELECT * FROM cards";
        $cards = $mysqli->query($sql);
        foreach ($cards as $card) {
            echo "<img src='./cards/" . $card['path'] . ".png'>";
        }
    }

    public function hand($id1, $id2, $id3, $id4, $id5)
    {
        $db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql =  "SELECT * FROM cards WHERE id IN ($id1)
                UNION ALL
                SELECT * FROM cards WHERE id IN ($id2)
                UNION ALL
                SELECT * FROM cards WHERE id IN ($id3)
                UNION ALL
                SELECT * FROM cards WHERE id IN ($id4)
                UNION ALL
                SELECT * FROM cards WHERE id IN ($id5)";
        $cards = $mysqli->query($sql);
        foreach ($cards as $card) {
            echo "<div class='containers'><img class='containers' src='./cards/" . $card['path'] . ".png'></div>";
        }
    }
}
