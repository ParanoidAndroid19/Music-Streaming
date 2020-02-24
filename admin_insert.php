<?php
	include("includes/config.php");
	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");
	if(!isset($_SESSION['admin_name'])){
        echo "<script>
            alert('First login as admin!!');
            window.location.href = 'admin_login.php';
        </script>";
    }
    $title=$_POST['title'];
    $artist=$_POST['artist'];
    $album=$_POST['album'];
    
    $duration=$_POST['duration'];
    $albumorder=$_POST['albumorder'];

    $filename = $_FILES['fileupload']['name'];
	$uploaddir = 'assets/music/';
	$uploadfile = $uploaddir . basename($filename);

	// echo $title, $artist, $album, $genre, $duration, $albumorder;

	if (move_uploaded_file($_FILES['fileupload']['tmp_name'], $uploadfile))
	{
		$files = basename($_FILES['fileupload']['tmp_name']);
		$location = "assets/music/" . $filename;
	    $sql_insert = "INSERT INTO songs (title, artist, album, duration, path, albumOrder) 
	    VALUES ('".$title."', '".$artist."', '".$album."', '".$duration."', '".$location."', '".$albumorder."');";
	    mysqli_query($con, $sql_insert);

	    echo "<script type='text/javascript'>alert('Upload Successful'); window.location.href='admin_panel.php';</script>";
	}
	else
	{
	    echo "File upload not successful\n";
	    echo 'Here is some more debugging info:';
	    print_r($_FILES['fileupload']['error']);
	    echo "
	    	<br><a href='admin_panel.php'>UPLOADPAGE</a>
	    ";
	}

?>