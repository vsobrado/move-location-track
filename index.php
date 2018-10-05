<!DOCTYPE html >
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Track the Journey</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
 <script type="text/javascript" src="plot.js"></script>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=[KEY GOES HERE]&callback=initMap"></script>
  </head>
  <body>
<div id="wrapper">
<?php
#HTTPS CHECK, REQUIRED FOR 2017 GOOGLE MAPS API
if ( ! isset($_SERVER['HTTPS'])) {
   header('Location: https://' . $_SERVER["SERVER_NAME"] . $_SERVER['REQUEST_URI']);
}   
?>
	<div id="header">
		<p>Track the Journey</p>
	</div>
	<div id="navigation">
		<a href="/index.php">Home</a>
	</div>
	<div id="content">
<div id="map"></div>
<div id="thumbnails">
<?php
/* display skewed thumbnails of uploaded images */
$path    = '/var/www/html/loc/uploads/';
$files = scandir($path);
$files = array_diff(scandir($path), array('.', '..'));
foreach($files as $images) {	
echo "<a href=\"/loc/uploads/" . $images ."\" target=\"_BLANK\"><img src=\"/loc/uploads/" . $images . "\" width=\"100\" height=\"100\"></a>";
}


?>
	</div>
	</div>
	<div id="footer">
Text
	</div>
</div>
</body>
</html>
