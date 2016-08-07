$(document).ready(function(){
	if ("geolocation" in navigator){
		console.log("We have geolocation");

		var options = {
			enableHighAccuracy: true,
			timeout: 3000
		};

		navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	} else {
		alert("We do not have geolocation");
	}
})

function onLocation(position){
	console.log(position);

	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;

	var url = `https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=13&size=400x300`
	$("#display").prop("src", url);
}

function onError(error){
	console.log(error);
}

