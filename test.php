<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Plot and Update</title>
</head>
<script type="text/javascript">
     function initGeolocation()
     {
        if( navigator.geolocation )
        {
           // Call getCurrentPosition with success and failure callbacks
           navigator.geolocation.getCurrentPosition( success, fail );
        }
        else
        {
           alert("Sorry, your browser does not support geolocation services.");
        }
     }

     function success(position)
     {

         document.getElementById('lat').value = position.coords.longitude;
         document.getElementById('long').value = position.coords.latitude
     }

     function fail()
     {
        // Could not obtain location
     }
   

   </script>    
 </head>
<body onLoad="initGeolocation();">
<p id="support-notice">No ajax support.</p>
<!-- The form starts -->
<form action="test2.php" method="post" enctype="multipart/form-data" id="form-id">
<fieldset>
<legend>Post an update:</legend>
  <p><label>Latitude: <INPUT TYPE="text" NAME="lat" ID="lat" VALUE=""></label></p>
  <p><label>Longitude: <INPUT TYPE="text" NAME="long" ID="long" VALUE=""></label></p>
  <p><label>Photo: <input id="file-id" type="file" name="our-file" accept="image/*" />
  <input type="button" value="Upload" id="upload-button-id" disabled="disabled" /></p>
  <p><label>Post: <textarea name="other-field" rows="20" cols="50" id="other-field-id" required></textarea></label></p>
  <p><input type="submit" value="Submit" /></p>
</fieldset>
</form>
  <script>
// Function that will allow us to know if Ajax uploads are supported
function supportAjaxUploadWithProgress() {
  return supportFileAPI() && supportAjaxUploadProgressEvents() && supportFormData();
  // Is the File API supported?
  function supportFileAPI() {
    var fi = document.createElement('INPUT');
    fi.type = 'file';
    return 'files' in fi;
  };
  // Are progress events supported?
  function supportAjaxUploadProgressEvents() {
    var xhr = new XMLHttpRequest();
    return !! (xhr && ('upload' in xhr) && ('onprogress' in xhr.upload));
  };
  // Is FormData supported?
  function supportFormData() {
    return !! window.FormData;
  }
}
// Actually confirm support
if (supportAjaxUploadWithProgress()) {
  // Ajax uploads are supported!
  // Change the support message and enable the upload button
  var notice = document.getElementById('support-notice');
  var uploadBtn = document.getElementById('upload-button-id');
  notice.innerHTML = "";
  uploadBtn.removeAttribute('disabled');
  // Init the Ajax form submission
  initFullFormAjaxUpload();
  // Init the single-field file upload
  initFileOnlyAjaxUpload();
}
function initFullFormAjaxUpload() {
  var form = document.getElementById('form-id');
  form.onsubmit = function() {
    // FormData receives the whole form
    var formData = new FormData(form);
    // We send the data where the form wanted
    var action = form.getAttribute('action');
    // Code common to both variants
    sendXHRequest(formData, action);
    // Avoid normal form submission
    return false;
  }
}
function initFileOnlyAjaxUpload() {
  var uploadBtn = document.getElementById('upload-button-id');
  uploadBtn.onclick = function (evt) {
    var formData = new FormData();
    // Since this is the file only, we send it to a specific location
    var action = '/upload';
    // FormData only has the file
    var fileInput = document.getElementById('file-id');
    var file = fileInput.files[0];
    formData.append('our-file', file);
    // Code common to both variants
    sendXHRequest(formData, action);
  }
}
// Once the FormData instance is ready and we know
// where to send the data, the code is the same
// for both variants of this technique
function sendXHRequest(formData, uri) {
  // Get an XMLHttpRequest instance
  var xhr = new XMLHttpRequest();
  // Set up events
  xhr.upload.addEventListener('loadstart', onloadstartHandler, false);
  xhr.upload.addEventListener('progress', onprogressHandler, false);
  xhr.upload.addEventListener('load', onloadHandler, false);
  xhr.addEventListener('readystatechange', onreadystatechangeHandler, false);
  // Set up request
  xhr.open('POST', uri, true);
  // Fire!
  xhr.send(formData);
}
// Handle the start of the transmission
function onloadstartHandler(evt) {
  var div = document.getElementById('upload-status');
  div.innerHTML = 'Upload started.';
}
// Handle the end of the transmission
function onloadHandler(evt) {
  var div = document.getElementById('upload-status');
  div.innerHTML += '<' + 'br>File uploaded. Submit when ready.';
}
// Handle the progress
function onprogressHandler(evt) {
  var div = document.getElementById('progress');
  var percent = evt.loaded/evt.total*100;
  div.innerHTML = 'Progress: ' + percent + '%';
}
// Handle the response from the server
function onreadystatechangeHandler(evt) {
  var status, text, readyState;
  try {
    readyState = evt.target.readyState;
    text = evt.target.responseText;
    status = evt.target.status;
  }
  catch(e) {
    return;
  }
  if (readyState == 4 && status == '200' && evt.target.responseText) {
    var result = document.getElementById('result');
    result.innerHTML = evt.target.responseText;

  }
}
  </script>

  <!-- Placeholders for messages set by event handlers -->
  <p id="upload-status"></p>
  <p id="progress"></p>
  <pre id="result"></pre>

</form>
</body>
</html>
