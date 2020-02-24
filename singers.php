<?php 
include("includes/includedFiles.php"); 
?>



<div class="gridViewContainer">

	<?php
		$singerQuery = mysqli_query($con, "SELECT * FROM artists ORDER BY RAND() LIMIT 10");

		while($row = mysqli_fetch_array($singerQuery)) {
			



			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"artist.php?id=" . $row['id'] . "\")'>
						<img src='" . $row['artworkPath'] . "'>

						<div class='gridViewInfo'>"
							. $row['name'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>