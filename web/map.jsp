<%-- 
    Document   : map
    Created on : 8 Oct, 2021, 4:37:46 PM
    Author     : abhishek-pt4287
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css" integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ==" crossorigin="" />
  <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.3.0/dist/MarkerCluster.css" />
  <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.3.0/dist/MarkerCluster.Default.css" />

  <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js" integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw==" crossorigin=""></script>
  <script src="https://unpkg.com/leaflet.markercluster@1.3.0/dist/leaflet.markercluster.js"></script>
        <title>MAP Page</title>
    </head>
    <body>
        <div class="row justify-content-md-center h-100">                        
				<div class="card-wrapper w-75">
                                            <br><br><br>
					<div class="card fat w-100">
						<div class="card-body w-100" id="hotel">
							<h2 class="card-title" style="text-align: center;">Our Hotels</h2>
        <div id="mapid" style="height: 600px;"></div>
                                                </div></div></div></div>
    </body>
        <script>
        var mymap = L.map('mapid').setView([20.59,78.96], 4.5);
        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'pk.eyJ1IjoiYWJoaXNoZWtzaXZhMjgiLCJhIjoiY2t1aTllZmIzMWRvYjJwbnZ5NGo2N2xxeiJ9.o9L1oMs_iG1YfLoZ5W1k1w'
}).addTo(mymap);
        console.log("Hello");
        var greenIcon = new L.Icon({
  iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-green.png',
  shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
  iconSize: [25, 41],
  iconAnchor: [12, 41],
  popupAnchor: [1, -34],
  shadowSize: [41, 41]
});
        var smarkers=L.markerClusterGroup();
        var hmarkers=L.markerClusterGroup();
        <s:iterator value="dataList1">
        var smarker=L.marker([<s:property value="lat"/>,<s:property value="longi"/>],{icon: greenIcon});
        smarker.bindPopup('<s:property value="name"/>');
        smarkers.addLayer(smarker);
        smarker.on('click', function(e){
    mymap.flyTo(e.latlng, 9);
}); 
        </s:iterator>
         <s:iterator value="dataList">
             console.log("Hello1");
             var marker = L.marker([<s:property value="lat"/>,<s:property value="longi"/>])
        marker.bindPopup("<b><s:property value="name"/></b><br><s:url action="getHotelBook" var="myurl"><s:param name="name" value="%{id}"/> </s:url><a href='<s:property value="#myurl"/>'>Book Rooms</a>");
        hmarkers.addLayer(marker);
          marker.on('click', function(e){
    mymap.flyTo(e.latlng, 13);
});                                                                              
     </s:iterator>
         mymap.addLayer(smarkers);
         mymap.on('zoomend', function() {
    if (mymap.getZoom() <9){
            mymap.removeLayer(hmarkers);
    }
    else {
            mymap.addLayer(hmarkers);
        }
});
         
         
 

    </script>
</html>
