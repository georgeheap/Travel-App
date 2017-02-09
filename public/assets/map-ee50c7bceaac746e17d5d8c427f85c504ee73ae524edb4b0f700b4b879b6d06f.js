var path = window.location.pathname;
function initMap() {
  mapDiv = $('#map');
  $.get(path + '.json', function (results) {

    var center = new google.maps.LatLng(results.lat,results.lng);
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: center,
    });
    var icon = "https://maps.gstatic.com/mapfiles/ms2/micons/blue-dot.png";
    var locMarker = new google.maps.Marker({
      position: center,
      map: map,
      icon: icon
    });
    tourMarker(map);
  });
}
function tourMarker(map) {
  $.get(path + '.json', function (results) {
    if (results.tours != null) {
      for (var i = 0; i < results.tours.length; i++) {
        var tour = results.tours[i];
        var latLng = new google.maps.LatLng(tour.lat,tour.lng);
        console.log(name);
        var infowindow = new google.maps.InfoWindow({
          content: tour.name
        });
        var marker = new google.maps.Marker({
          position: latLng,
          map: map,
          title: results.tours[i].name
        });
        // marker.addListener('click', function() {
        //   infowindow.open(map, marker);
        // });
        google.maps.event.addListener(marker, 'click', (function (marker, i) {
             return function () {
                 infowindow.setContent(results.tours[i].name);
                 infowindow.open(map, marker);
             }
         })(marker, i));
      }
    }
  });
}
;
