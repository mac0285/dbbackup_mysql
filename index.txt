<?php
include 'config.php';
include 'opendb.php';

$tableName  = 'mypet';
$backupFile = 'backup/mypet.sql';
$query      = "SELECT * INTO OUTFILE '$backupFile' FROM $tableName";
$result = mysql_query($query);

include 'closedb.php';
?>