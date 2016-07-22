var fs = require('fs');

function fileActions(err, file){ 
    if (err) {
        throw err;
    }

    var episodes = JSON.parse(file);

    episodes.forEach(function(episode){
    	console.log(`Title: ${episode.title}	Episode #: ${episode.episode_number} \n${episode.description} \nRating: ${episode.rating} \n`);
    	});
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);