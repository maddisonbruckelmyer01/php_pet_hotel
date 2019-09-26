<?php 
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

require_once("./resources/config.php");

$result = pg_query($dbconn, "SELECT owners.name, owners.id, COUNT(owner_name) FROM pets JOIN owners
    ON owners.id = pets.owner_name GROUP BY owners.id");

$response = [];

$i = pg_num_rows($result);


for ($j = 0; $j < $i; $j++) {
    $data = pg_fetch_object($result);
    array_push($response, $data);
}

echo json_encode($response);

?>

