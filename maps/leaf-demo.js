// // See post: http://asmaloney.com/2014/01/code/creating-an-interactive-map-with-leaflet-and-openstreetmap/

// var map = L.map( 'map', {
//   center: [20.0, 5.0],
//   maxZoom: 16,
//   minZoom: 2,
//   zoom: 2
// })

// L.tileLayer( 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
//   attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
//   subdomains: ['a', 'b', 'c']
// }).addTo( map )

// var myURL = jQuery( 'script[src$="leaf-demo.js"]' ).attr( 'src' ).replace( 'leaf-demo.js', '' )

// var myIcon = L.icon({
//   iconUrl: myURL + 'images/pin24.png',
//   iconRetinaUrl: myURL + 'images/pin48.png',
//   iconSize: [29, 24],
//   iconAnchor: [9, 21],
//   popupAnchor: [0, -14]
// })

// // for ( var i=0; i < markers.length; ++i )
// // {
// //  L.marker( [markers[i].lat, markers[i].lng], {icon: myIcon} )
// //   .bindPopup( '<a href="' + markers[i].url + '" target="_blank">' + markers[i].name + '</a>' )
// //   .addTo( map );
// // }
// var markers = [
// ["<b style='font-size:15pt;'> ROXAS CITY CHAPTER </b> <br> <i style='font-size:12pt;'> JUAN DELA CRUZ </i> <br>juan@yahoo.com", 11.58528,122.75111],
// ["<b style='font-size:15pt;'> MANILA CITY CHAPTER </b> <br> <i style='font-size:12pt;'> PEDRO DELA CRUZ </i> <br>pedro@gmail.com", 14.599512,120.984222]
// // ["<b style='font-size:15pt;'> CANADA CHAPTER </b> <br> <i style='font-size:12pt;'> SIMON DELA CRUZ </i> <br>simon@gmail.com", 53.631611 ,-113.323975]
// ];
// for ( var i=0; i < markers.length; i++ ){
//   marker = L.marker ([markers[i][1], markers[i][2]], {icon: myIcon})
//   marker.on('mouseover',function(ev) {
//       ev.layer.openPopup()
//     })
//   .addTo( map );
// })



var map = L.map('map').setView([11.58528,122.75111], 5);

var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
    var osmLayer = new L.TileLayer(osmUrl, {
        maxZoom: 12,
        attribution: 'Map data © OpenStreetMap contributors'
    });
map.addLayer(osmLayer);
    var markers = [];
    var marker1 = L.marker([11.58528,122.75111],{title:"marker_1"}).addTo(map).bindPopup("<b style='font-size:15pt;'> ROXAS CITY CHAPTER </b> <br>");
    markers.push(marker1);
    var marker2 = L.marker([14.599512,120.984222],{title:"marker_2"}).addTo(map).bindPopup("<b style='font-size:15pt;'> MANILA CITY CHAPTER </b> <br>");
    markers.push(marker2);
    
    marker1.on('mouseover',function(ev) {
      marker1.openPopup();
    });

    marker2.on('mouseover',function(ev) {
      marker2.openPopup();
    });
    
    
    function markerFunction(id){
        for (var i in markers){
            var markerID = markers[i].options.title;
            if (markerID == id){
                markers[i].openPopup();
            };
        }
    }
    
    $("a").click(function(){
        markerFunction($(this)[0].id);
    });