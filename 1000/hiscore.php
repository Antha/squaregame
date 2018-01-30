<?php include("header.php") ?>
<!DOCTYPE html>
<html>
<head>
	<title>1000 | Demonstration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="../style/1000.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="../lib/jquery.min.js"></script>
</head>
<body>

<script>
function back()
{
	window.location.href = "index.html";
}

$(document).ready(function(){
	orderBy("SCORE");
});

function orderBy(fieldT) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		    $(".table.table-striped.hiscore").html(this.responseText);
	    }
	};
	xmlhttp.open("GET", "hiscoreajax.php?orderBy="+fieldT);
	xmlhttp.send();
}
</script>

<div class="mbox_img">
	<button name="close">Close</button>
	<img src="../upload/1000/952.jpg" class="img-responsive"/>
</div>

<div class="container-main">
	<div class="inline1 high_score col-lg-12">
		<h3> Perolehan Score Sementara</h3>
        <button onclick="back()">Back</button>
		<button onclick="orderBy('SCORE')" name="">Urut Berdasarkan Score</button>
		<button onclick="orderBy('ID')" name="">Urut Berdasarkan Waktu Main</button>
		<table class="table table-striped hiscore">
		</table>
    </div>
</div>

</body>
</html>
