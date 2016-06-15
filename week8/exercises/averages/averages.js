var numbers = '80:70:90:100';

var array = numbers.split(":");
var sum = array.reduce(function(sum, number) {
	return parseInt (sum) + parseInt (number);
})

var averageColon = sum / array.length;

console.log(averageColon);
