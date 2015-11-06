<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset=UTF-8">
<meta name="viewport" content="width=device-width; inital-scale=1.0" >
<title>map2.jsp</title>
<style type="text/css">
	html, body{
		width:100%;
		height:100%
	}
	#map{
		width: 100%;
		height: 100%;
	}
</style>
</head>
<body>
<button id="loc1">강남역</button>
<button id="loc2">이대역</button>
<button id="loc3">광화문</button>
<button id="loc4">우리집</button>
<div id="map">Google Map</div>

</body>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
	var latLng = {
			lat : 37.12345,
			lng : 127.12345
	};
	var options = {
			zoom : 12,
			center : latLng
	}
	
	var m = new google.maps.Map(map, options);
	
	m.setCenter({
		lat : 37.498384,
		lng : 127.027535
	});
	
	m.setZoom(18);
	
	var geoCoder = new google.maps.Geocoder();
	
	function moveMap(){
		alert("loc click..."+this.id);
		switch (this.id) {
		case "loc1":
// 			//m.setCenter({
// 				m.panTo({
// 				lat : 37.498384,
// 				lng : 127.027535
// 			});
			geoCoder.geocode({address : '강남역'},function(result, status){
			
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				
				m.setCenter({
					lat : lat,
					lng : lng
				});
				
				m.setZoom(18);
			});
			break;
		case "loc2":
			m.setCenter({
				lat : 37.557033,
				lng : 126.945857
			});
			m.setZoom(15);
			break;
		case "loc3":
			m.setCenter({
				lat : 37.571785,
				lng : 126.976602
			});
			m.setZoom(10);
			break;
		case "loc4":
		//	m.setCenter({
			m.panTo({
				lat : 37.266749,
				lng : 127.057509
			}); 
			break;
		default:
			break;
		}		
	}
	loc1.onclick = moveMap;
	loc2.onclick = moveMap;
	loc3.onclick = moveMap;
	loc4.onclick = moveMap;
</script>
</html>