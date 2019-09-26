<?php 
require_once("./resources/config.php");

$result = pg_query($dbconn, "SELECT * FROM owners");

$i = pg_num_rows($result);

// while($line = pg_fetch_object($result)) {
//     foreach($line as $name) {
//         echo json_encode($name);
//     }
// }

for ($j = 0; $j < $i; $j++) {
    $data = pg_fetch_object($result);
    echo json_encode($data);
}

// while($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
//     foreach($line as  $col_value) {
//         echo "$col_value</br>";
//     }
// }
?>