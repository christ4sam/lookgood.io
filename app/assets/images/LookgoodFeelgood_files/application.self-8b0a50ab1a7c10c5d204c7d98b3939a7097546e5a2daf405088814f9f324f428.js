
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//







 
// Maker on nearby stores on the map
// var map ;
// var service ;

// function handleSearchResults(results, status){
//   for(var i = 0; i < results.length; i++) {
//     var marker = new google.maps.Marker({
//       position: results[i].geometry.location,
//       map: map,
//       icon: 'images/download.jpeg'
//     });
//   }
// }

// function performSearch(){
//   var request = {
//     bounds: map.getBounds(),
//     name:"Stores"
//      // openNow: true
//     };
//     service.nearbySearch(request, handleSearchResults);
//   }

//   function initialize(location){ 
//     console.log(location); 
//     var currentLocation = new google.maps.LatLng(location.coords.latitude, location.coords.longitude),
  
//     mapOptions = {
//      center: currentLocation,
//      zoom: 12,
//      mapTypeId: google.maps.MapTypeId.ROADMAP
//    };

//    map = new google.maps.Map(document.getElementById("googleMap"),mapOptions);

//    var marker = new google.maps.Marker({
//      position: currentLocation,
//      map: map
//    });

//    service  = new google.maps.places.PlacesService(map);

//   // This will ensure we wait until the map bouds are fully initialzed or reachedonly then will it perform the search once to ensures the search covers the map bounds
//   google.maps.event.addListenerOnce(map, 'bounds_changed', performSearch);
// }


// $(document).ready(function(){
//   navigator.geolocation.getCurrentPosition(initialize);
// });

