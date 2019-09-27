<?php 
    require_once("./resources/config.php");

    header("Access-Control-Allow-Origin: *");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json);
    $sql = "INSERT INTO owners (name) VALUES ($_POST[owner])";

    if (pg_query($dbconn, $sql)) {
        echo 'successfully added';
    } else {
        echo "error: could not execute $sql";
        pg_error($dbconn);
    }
?>

