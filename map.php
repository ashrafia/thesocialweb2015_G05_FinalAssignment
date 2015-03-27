<?php
  
  $danceSchool = "";  // Keep it simple, use text.
  $link = mysqli_connect("localhost", 'root', '', 'facebook') or die("Error " . mysqli_error($link));
  $schools = $link->query("
      SELECT
        id, name, lat, lng, description
      FROM 
        school
  ");
  
  $result = [];                         // Declare empty Array();
  if($schools->num_rows == 0) {         // If there is no data
      $danceSchool = "alert('Something went wrong, I could not obtain database access...');";
  } else {                              // We have data

    foreach ($schools as $school) {
        $danceSchool .= "
          locations.push({
              name: \"".$school['name']."\", 
              lat: ".$school['lat'].", 
              lng: ".$school['lng']."
          });          


          var school".$school["id"]." = new google.maps.Marker({       
            position: new google.maps.LatLng(".$school["lat"].", ".$school["lng"]."),
            map: map,
            draggable: false,
            size: new google.maps.Size(40,50)
          });
          google.maps.event.addListener(school".$school["id"].", 'click', function() {
              infowindow.setContent('<h3>".$school['name']."</h3><p>".$school["description"]."</p>');
              infowindow.open(map,school".$school["id"].");
          });
        ";
    }

  }

?>
<html>
  <head>
    <style>
      #map-canvas {
        width: 100%;
        height: 100%;
      }
      h3 {
        margin-bottom: 0px;
        padding-bottom: 0px;
      }
      p {
        margin-top: 0px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
      var map;
      var infowindow = new google.maps.InfoWindow();
      var cLat; var cLng; // Our current location
      var locations = [];

      function mapLogics() {                                        // Logics for zour map
        var mapCanvas = document.getElementById('map-canvas');
        var mapOptions = {
          center: new google.maps.LatLng(52.3714363, 4.894921),     // Centre the map around Amsterdam
          zoom: 11,                                                 // Change the zoomlevel, in-order-to see all of AMsterdam
          mapTypeId: google.maps.MapTypeId.ROADMAP                  
        }
        map = new google.maps.Map(mapCanvas, mapOptions)            // Create the Google Map
        <?php print $danceSchool; ?>                                // Place danceschool markers
        getLocation();                                              // Get our current location

        function getLocation() {
            var options = { timeout: 30000, enableHighAccuracy: true };
            return navigator.geolocation.getCurrentPosition(onSuccess, onError, options);
        }
        function onSuccess(position) {
          cLat = position.coords.latitude;
          cLng = position.coords.longitude;
          map.setZoom(14);
          map.panTo({lat : cLat, lng : cLng});

          var myLocation = new google.maps.Marker({       
            position: new google.maps.LatLng(cLat, cLng),
            map: map,
            draggable: false,
            size: new google.maps.Size(40,50)
          });
          google.maps.event.addListener(myLocation, 'click', function() {
              infowindow.setContent('<h3>You are here</h3><p>Scroll on the map to find a dance school</p>');
              infowindow.open(map,myLocation);
          });          

          var directionsService = new google.maps.DirectionsService();
          var directionsDisplay = new google.maps.DirectionsRenderer();
          
          directionsDisplay.setMap(map);
          directionsDisplay.setOptions({
            markerOptions : {
              visible : false
            },
              polylineOptions: {
                strokeColor: "red",
                strokWidth: 5
              }       
          });        

          // Calculate closest danceschool function
          function rad(x) {return x*Math.PI/180;}
          var R = 6371; // radius of earth in km
          var distances = [];
          var closest = -1;
          
          for( i=0;i<locations.length; i++ ) {
            var mlat = locations[i].lat;
            var mlng = locations[i].lng;
            var dLat  = rad(mlat - cLat);
            var dLong = rad(mlng - cLng);
            var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(rad(cLat)) * Math.cos(rad(cLat)) * Math.sin(dLong/2) * Math.sin(dLong/2);
            var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
            var d = R * c;
            distances[i] = d;
            if ( closest == -1 || d < distances[closest] ) {
              closest = i;
            }
          }
          var currLoc = new google.maps.LatLng(cLat, cLng);
          var dest = new google.maps.LatLng(locations[closest].lat, locations[closest].lng);
          var request = {
            origin: currLoc,
            destination: dest,
            travelMode: google.maps.TravelMode.DRIVING
          };
          directionsService.route(request, function(result, status) {
            if (status == google.maps.DirectionsStatus.OK) {
              directionsDisplay.setDirections(result);
              console.log('Direction set');
            } else {
              console.log('Calcuation problem: '+status);
            }
          });

        }
        function onError(error) {           // Keep trying until our location is valid
          var options = { timeout: 30000, enableHighAccuracy: true };     
          navigator.geolocation.getCurrentPosition(onSuccess, onError, options); 
        }        

      } // End of map logics.

      google.maps.event.addDomListener(window, 'load', mapLogics);  // Load the map
    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>
