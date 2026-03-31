<?php
define('SERVER', 'localhost');
define('USER', 'root');
define('PASSWORD', '');
define('DATABASE', 'jogos');

$conn = new mysqli(SERVER, USER, PASSWORD, DATABASE);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>