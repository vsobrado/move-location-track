<?php

// Start XML file, create parent node

$dom = new DOMDocument("1.0");
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

// Set MYSQL server, username and password

$connection=mysql_connect ('localhost', 'username', 'password');
if (!$connection) {  die('Not connected : ' . mysql_error());}

// Select the MySQL database

$db_selected = mysql_select_db('loc_test', $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
}

// Select all the rows in the markers table

$query = "SELECT * FROM loc WHERE 1";
$result = mysql_query($query);
if (!$result) {
  die('Invalid query: ' . mysql_error());
}

header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each

while ($row = @mysql_fetch_assoc($result)){
  // Add to XML document node
  $node = $dom->createElement("marker");
  $newnode = $parnode->appendChild($node);
  $newnode->setAttribute("id",$row['id']);
  $newnode->setAttribute("lat", $row['lat']);
  $newnode->setAttribute("lng", $row['longi']);
  $newnode->setAttribute("address", $row['timestamp']);
  $newnode->setAttribute("image", $row['image']);
  $newnode->setAttribute("type", $row['post']);
}

echo $dom->saveXML();

?>
