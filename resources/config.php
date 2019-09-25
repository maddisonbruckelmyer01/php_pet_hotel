<?php
 $dbconn = pg_connect("host=localhost dbname=pets") 
    or die('Could not connect: '. pg_last_error());

?>