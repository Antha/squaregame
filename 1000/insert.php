<?php
include("header.php");
move_uploaded_file($_FILES["file"]["tmp_name"],"../upload/1000/".$_FILES["file"]["name"]);

$name = $_POST["name"];
$score = $_POST["score"];
$pic = $_FILES["file"]["name"];

mysqli_query($connect,"insert into 1000_high_score(NAME,SCORE,PIC) values ('".$name."',".$score.",'".$pic."')");

echo "hai sayang";

?>
