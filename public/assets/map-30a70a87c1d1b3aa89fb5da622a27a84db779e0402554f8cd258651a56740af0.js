var path = window.location.pathname;
function initMap() {
  mapDiv = $('#map');

  $.get(path + '.json', function (results) {
    var center = new google.maps.LatLng(results.lat,results.lng);
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 9,
      center: center,
    });
    var locMarker = new google.maps.Marker({
      position: center,
      map: map
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
        var marker = new google.maps.Marker({
          position: latLng,
          map: map
        });
      }
    }
  });
}
;
