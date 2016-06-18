var planet = [	[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
				[ , , , , , , , , , ],
			];

var myRover = {
  position: [0,0], 
  direction: 'N',
}

var object1 = {
	name: "X",
	position: [3,0]
}
var object2 = {
	name: "X",
	position: [5,0]
}

planet[3][0] = object1.name;
planet[5][0] = object2.name;


function move(rover, movement) {
	var direction = movement.split("");

	var x = myRover.position[0];
	var y = myRover.position[1];
	planet[x][y] = myRover.position;

	for (i = 0; i < direction.length; i++) {
		var letter = direction[i];
			switch(letter) {
    		case 'N':
    			if ((rover.position[0] > 0) && (planet[x++][y] == "X"))
    			rover.position[0]--
    			break;
    		case 'S':
    			if ((rover.position[0] < 9) && (planet[x++][y] == "X"))
    			rover.position[0]++
    			break;
    		case 'E':
    			if ((rover.position[1] < 9) && (planet[x][y++] == "X"))
    			rover.position[1]++
    			break;
    		case 'W':
    			if ((rover.position[1] > 0) && (planet[x][y++] == "X"))
    			rover.position[1]--
    			break;
			}
	}
}

move(myRover,'SSSSEES');

	var x = myRover.position[0];
	var y = myRover.position[1];
	planet[x][y] = "P";

console.log(myRover.position);
console.log(planet);

