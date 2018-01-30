<?php include("header.php") ?>
<!DOCTYPE html>
<html>
<head>
	<title>fancyBox - Fancy jQuery Lightbox Alternative | Demonstration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="../style/style.css"/>
</head>
<body>

<script>
function back()
{
	window.location.href = "index.html";
}
</script>

<div class="container-main">
	<div class="inline1 high_score col-lg-12">
		<h3> Perolehan Score Sementara</h3>

		<table class="table table-striped">
		<?php $query = mysqli_query($connect,"Select * from high_score order by Score desc");?>
		<?php while($row = mysqli_fetch_array($query)){?>
			<tr>
				<td><?php echo $row["Nama"];?></td>
				<td><?php echo $row["Score"];?></td>
			</tr>
		<?php } ?>
		</table>

		<button onclick="back()">Back</button>
    </div>
</div>

</body>
</html>
