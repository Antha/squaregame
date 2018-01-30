<?php
include("header.php")

$name = $_POST["name"];
$score = $_POST["score"];

mysqli_query($connect,"insert into high_score(Nama,Score) values ('".$name."',".$score.")");

?>
