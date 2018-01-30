<?php
include("header.php");

$name = $_POST["name"];
$score = $_POST["score"];

mysqli_query($connect,"insert into taptap_high_score(NAMA,SKOR) values ('".$name."',".$score.")");
?>
