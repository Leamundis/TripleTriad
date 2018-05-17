<?php


include_once('classes/Card.php');
//include_once('controllers/authentification.controller.php');


Card::connect();

$card = new Card(4);


$cards = Card::allCards();
