<?php 
require_once("./resources/config.php");

$result = pg_query($dbconn, "SELECT * FROM pets JOIN owners ON pets.owner_name = owners.id;");

$i = pg_num_rows($result);

for ($j = 0; $j < $i; $j++) {
    $data = pg_fetch_object($result);
    echo json_encode($data);
}
?>