<?php
    include("header.php");
    $query = mysqli_query($connect,"Select * from heirs_high_score order by ".$_GET["orderBy"]." ");
	while($row = mysqli_fetch_array($query)){
			echo "<tr>";
				echo "<td>".$row["NAME"]."</td>";
                if($row["SCORE"] != 123456789){
                    echo "<td>".$row["SCORE"]." Second</td>";
                }else{
                    echo "<td>GAME OVER</td>";
                }
                echo "<td>";
                    if($row["PIC"] == NULL){echo "NO PIC";} else {
                        echo "<div class='img-hiscore'>
                             <img src='../upload/heirs/".$row['PIC']."' class='img-responsive' onclick='imgZoom(this.src)'>
                             </div>";
                        //echo "<button name='zoomimg'>Perbesar</button>";
                    }
                echo "</td>";
			echo "</tr>";
	}
?>
