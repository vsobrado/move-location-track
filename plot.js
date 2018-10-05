        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng('40.2414', '-75.2837'),
          zoom: 5
        });
        var infoWindow = new google.maps.InfoWindow;

          // Change this depending on the name of your PHP or XML file
          downloadUrl('[FQDN/DIRECTORY/]xml.php', function(data) {
	      var xml = data.responseXML;
              var markers = xml.documentElement.getElementsByTagName('marker');
            Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var name = markerElem.getAttribute('image');
              var address = markerElem.getAttribute('timestamp');
              var type = markerElem.getAttribute('post');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));
              var marker = new google.maps.Marker({
                map: map,
                position: point,
              });
	
              marker.addListener('click', function() {
                infoWindow.open(map, marker);
infoWindow.setContent('<b>' + markerElem.getAttribute('address') + '</b><br>' + markerElem.getAttribute('type'));
              });
            });
          });
        }

      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}

var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(redirectToPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function redirectToPosition(position) {
window.location='test2.php?lat='+position.coords.latitude+'&long='+position.coords.longitude;
}

function redirect(here) {
window.location='index.php';
}
