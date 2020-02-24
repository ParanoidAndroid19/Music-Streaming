<?php

include("includes/config.php");

/*** begin our session ***/
session_start();

session_unset();

session_destroy();


if(!$_SESSION['username'])
{
	echo "User Logged OUT!";
	header('location:register.php');
}
?>
