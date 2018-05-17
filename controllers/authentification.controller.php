<?php

$con = @new mysqli('localhost', 'root', '0000', 'cards');

if ($con->connect_error) {
    echo "Error: " . $con->connect_error;
	exit();
} else {
    echo 'Connected to MySQL';
}
