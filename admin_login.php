<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Login</title>
	<link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
	<style type="text/css">
		.admin_button{
		    background-color: transparent;
		    border: 2px solid #fff;
		    border-radius: 250px;
		    color: #fff;
		    display: block;
		    font-size: 14px;
		    letter-spacing: 1px;
		    margin: 20px auto;
		    height: 41px;
		    width: 100%;
		}
	</style>
</head>
<body>
	<div id="background">
		<div class="ml-auto">
				<button style="float:right; margin-top:5px; margin-right:5px; width:125px;" onclick="window.location.href='index.php'" class="admin_button">User Login</button>
			</div>
		<div id="loginContainer">
			<div id="inputContainer">
				<form action="admin_verify.php" method="post">
					<h2>Login to admin:</h2>
					<p>
						<label for="loginUsername">Username</label>
						<input id="loginUsername" name="loginUsername" type="text" required>
					</p>
					<p>
						<label for="loginPassword">Password</label>
						<input id="loginPassword" name="loginPassword" type="password"required>
					</p>

					<button type="submit" name="loginButton">LOG IN</button>	
				</form>
			</div>
			<div id="loginText">
				<h1>Admin Login</h1>
				<h2>Upload songs and related information.</h2>
			</div>
		</div>
	</div>
</body>
</html>