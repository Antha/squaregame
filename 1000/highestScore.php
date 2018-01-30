<?php
include("header.php");

$qhigest_score = mysqli_query($connect,"Select * From 1000_high_score order By SCORE Desc limit 1");

while($row = mysqli_fetch_array($qhigest_score))
{
    $data["nama"] = $row["NAME"];
    $data["high_score"] = $row["SCORE"];
}

echo "SKOR Tertinggi Adalah ".$data["high_score"]." Oleh ". $data["nama"];

?>
