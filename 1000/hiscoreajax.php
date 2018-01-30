<?php
    include("header.php");
    $query = mysqli_query($connect,"Select * from 1000_high_score order by ".$_GET["orderBy"]." desc");
	while($row = mysqli_fetch_array($query)){
			echo "<tr>";
				echo "<td>".$row["NAME"]."</td>";
				echo "<td>".$row["SCORE"]."</td>";
                echo "<td>";
                    if($row["PIC"] == NULL){echo "NO PIC";} else {
                        echo "<div class='img-hiscore'>
                             <img src='../upload/1000/".$row['PIC']."' class='img-responsive' onclick='imgZoom(this.src)'>
                             </div>";
                        //echo "<button name='zoomimg'>Perbesar</button>";
                    }
                echo "</td>";
			echo "</tr>";
	}
?>

<script>
$(document).ready(function(){
    $(".mbox_img button[name=close]").click(function(){
        $(".mbox_img").animate({marginTop:"-1030px",opacity:"show"},150);
        $(".mbox_img").css("margin-top","0px");
    });
});
function imgZoom(sourceZoom){
    //alert("yeay");
    $(".mbox_img img").attr("src",sourceZoom);
    $(".mbox_img").animate({marginTop:"-230px",opacity:"show"},150);
};
</script>
