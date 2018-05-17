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

    protected static $conn;


    public function __construct($id)
    {
        $sql =  "SELECT * FROM cards WHERE id=" . $id;
        $result = self::$conn->query($sql);
        $card = $result->fetch_assoc();
        echo "<img src='./cards/" . $card['path'] . ".png'>";


        $name = $card['name'];
        $scoreUp = $card['scoreUp'];
        $scoreDown = $card['scoreDown'];
        $scoreLeft = $card['scoreLeft'];
        $scoreRight = $card['scoreRight'];
    }

    public static connect() {
        self::$conn = new mysqli("localhost", "root", "0000", "cards");
    }

    public function getUp()
    {
        return $this->scoreUp;
    }

    public static function allCards()
    {
        $sql =  "SELECT * FROM cards";
        foreach  ($conn->query($sql) as $card) {
            echo "<img src='./cards/" . $card['path'] . ".png'>";
        }
    }
}
