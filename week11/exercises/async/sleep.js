var sleep = function(seconds, callback){
	setTimeOut(callback, seconds * 1000);
}

sleep(10, function () {
	console.log("It's been 10 second.");
});