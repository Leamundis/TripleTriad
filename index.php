<?php


include_once('classes/Card.php');
include_once('classes/Database.php');
include_once('classes/Game.php');


$game = new Game();

echo "<div class='hand'>";
$game->playerOne();
echo "</div>";
echo "<br>";
include_once('views/gameboard.html');
echo "<br>";
echo "<div class='hand'>";
$game->playerTwo();
echo "</div>";
