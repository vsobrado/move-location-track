<?php
$long = $_POST['lat'];
$lat = $_POST['long'];
$servername = "localhost";
$username = "USERNAME";
$password = "PASSWORD!";
$dbname = "loc";
$data = $_POST['other-field'];
if(!empty($_FILES['our-file']))
print_r($_POST);
  {

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$filename = $_FILES['our-file']['name'];
$sql = "INSERT INTO loc (lat, longi, post, image) VALUES ('$lat', '$long', '$data', '/loc/uploads/$filename')";
if ($conn->query($sql) === TRUE) {
    echo "<!---- Location added to database.----!>";
} else {
    echo "Error inserting data: " . $conn->error;
}

$conn->close();
    $path = "uploads/";
    $path = $path . basename( $_FILES['our-file']['name']);
    if(move_uploaded_file($_FILES['our-file']['tmp_name'], $path)) {
      echo "The file ".  basename( $_FILES['our-file']['name']). 
      " has been uploaded.<br>";
    } else{
        echo "There was an error uploading the file. The following may be helpful:<br>";
	print_r($_FILES);
	print_r($_POST);
    }
  }
?>
