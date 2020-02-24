<?php
	include("includes/config.php");
	$username = $_POST['loginUsername'];
	$password = $_POST['loginPassword'];
	$verify = "SELECT * FROM admin WHERE name = '$username' AND password='$password'";
	$query = mysqli_query($con,$verify);
	if(mysqli_num_rows($query) != ""){
		$_SESSION['admin_name'] = $username;
		echo "<script>
				window.location.href = 'admin_panel.php';
			</script>
		";
	}
	else{
		echo "
			<script>alert('Wrong Admin username and password!!');
				window.location.href = 'admin_login.php';
			</script>
		";
	}
?>