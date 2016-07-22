var fs = require('fs');

function slideLoader (file, callback) {
	function splitSlides (error, string) {
		if (error) {
			console.log('Oh no! Error!', error);
		} else {
			var slides = string.split('\n----\n');
			callback(slides);
		}
	}
	fs.readFile(file, 'utf8', splitSlides);
}
module.exports = slideLoader;