'use strict'
var fs = require('fs');
var l = (data) => console.log(data);

fs.readFile("werther.txt", function(error, content) {
	if (error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFile("kafka.txt", function(error, content) {
	if (error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFile("cicero.txt", function(error, content) {
	if (error) {
		l(error);
	} else {
		l(content);
	}
});