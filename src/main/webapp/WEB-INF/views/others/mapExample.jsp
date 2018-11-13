<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 이 부분은 아직 연구 필요 */
	/* Always set the map height explicitly to define the size of the div
	       * element that contains the map. */
	#map
	{
		height: 400px;
		width: 100%;
		background:gray;
	}
</style>
</head>
<body>
	<h3>Google Map</h3>
	<div id="map"></div>
	<script>
		/* function initMap()
		{
			//위도 경도 설정
			var uluru = {lat : 37.56667, lng : 126.97806};
			
			// 맵 불러오기 
			var map = new google.maps.Map(document.getElementById('map'),
			{
				center : uluru,
				//지도 불러왔을때 default 상태의 zoom
				zoom : 10
			});
			
			// 마커찍기
			var marker = new google.maps.Marker(
			{
				position : uluru,
				map : map,
				title : "Hello!"
			});
		} */
		
		var map;
		function initMap()
		{
			var latLng = new google.maps.LatLng(22.303683, 114.160423);
			var mapOptions = 
			{
				zoom : 18,
				center : latLng
			}
			
			map = new google.maps.Map(document.getElementById('map'), mapOptions);
			
			google.maps.event.addListener(map, 'click', function(event)
			{
				placeMarker(event.latLng);
			});
		}
		
		/* function placeMarker(location)
		{
			var marker = new google.maps.Marker(
			{
				position : location,
				map : map
			});
			
			//map.setCenter(location);
		} */
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDiF8Yj3g8V_IP0FHZqScTF8wrJseo6fHY&callback=initMap" async defer>
    	/* API Key */
	    /* AIzaSyDiF8Yj3g8V_IP0FHZqScTF8wrJseo6fHY */
    </script>
</body>
</html>