<?php
require_once 'conn.php';

$sql = "SELECT * FROM jogos";
$result = mysqli_query($conn, $sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Name: " . $row["name"]. " - Price: " . $row["price"]. "<br>";
  }
} else {
  echo "0 results";
}
mysqli_close($conn);

?>