<?php
$long = $_GET['long'];
$lat = $_GET['lat'];
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "loc";
$pic = $_GET['pic'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO loc (lat, longi) VALUES ('$lat', '$long')";
if ($conn->query($sql) === TRUE) {
    echo "<!---- Location added to database.----!>";
} else {
    echo "Error inserting data: " . $conn->error;
}

$conn->close();
?>

<!DOCTYPE html>
<html>
  <head>
    <style>
      #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>You're around here:</h3>
    <div id="map"></div>
    <script>
	function initMap() {
        var uluru = {lat: <?php echo $lat; ?>, lng: <?php echo $long; ?>};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
function redirect() {
window.location='index.php';
}
</script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=[KEY GOES HERE]&callback=initMap">
    </script>
<p><button onclick="redirect()">Geomap</button></p>
  </body>
</html>
