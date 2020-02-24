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
?>
<!DOCTYPE html>
<html>
<head>
    <title>ADMIN PANEL</title>
    <link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body id="background">
	<div class="ml-auto">
		<a style="float:right; margin-top:5px; margin-right:5px; width:100px;" href="out.php" class="btn btn-danger">Logout</a>
	</div>
    <div>
    	<!-- <div id="background"> -->
			<div id="loginContainer">
				<div id="inputContainer" style="margin-left: 30%; padding:35px;">
    		        <center><h2 style="color: white;">Upload song here:</h2></center>
			        <form method="post" action="admin_insert.php" enctype="multipart/form-data">
			            
			        	<div class="custom-file">
                            <input type="file" class="custom-file-input" name="fileupload" id="fileupload" required>
                            <label class="custom-file-label" for="customFile">Choose file:</label>
                        </div> <br><br>
			            <p>
							<label for="title">Title:</label>
							<input name="title" type="text" placeholder="Enter song title.." required>
						</p>

						<p>
							<label for="artist">Artist:</label>
							<select style="color: black;" name="artist" class='form-control form-control-sm' required>
								<?php
									$artist = "SELECT * FROM artists";
									$get_artist = mysqli_query($con,$artist);
									while ($res=mysqli_fetch_array($get_artist)) {
										echo"
                                                <option style='color: black;'  value=".$res['id'].">".$res['name']."</option> 
                                        ";
									}
								?>
							</select>
						</p>

						<p>
							<label for="album">Album:</label>
							<select style="color: black;" name="album" class='form-control form-control-sm' required>
								<?php
									$ablum = "SELECT * FROM albums";
									$get_album = mysqli_query($con,$ablum);
									while ($res=mysqli_fetch_array($get_album)) {
										echo"
                                                <option style='color: black;' value=".$res['id'].">".$res['title']."</option> 
                                        ";
									}
								?>
							</select>
						</p>

						<p>
							<label for="duration">Duration:</label>
							<input name="duration" type="text" placeholder="Enter in format xx:xx" required>
						</p>

						<p>
							<label for="albumorder">Album Order:</label>
							<select style="color: black;" name="albumorder" class='form-control form-control-sm' required>
								<?php
									$i=1;
									while ($i<=5) {
										echo"
                                                <option style='color: black;' value=$i>$i</option> 
                                        ";
                                    $i = $i+1;
									}
								?>
							</select>
						</p>
						<center><input class="btn btn-outline-success" type="submit" name="submit_register"></center>
			        </form>
			    </div>
			</div>
		<!-- </div> -->
    </div>
    <script type="text/JavaScript">
        var file = document.getElementById('fileupload');
        file.onchange = function(e){
            var ext = this.value.match(/\.([^\.]+)$/)[1];
            switch(ext)
            {
                case 'mp3':
                    break;
                case 'wav':
                    break;
                default:
                    alert('Upload only mp3/wav files!');
                    this.value='';
            }
        };
    </script>
</body>
</html>