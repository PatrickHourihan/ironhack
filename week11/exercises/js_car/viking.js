var Viking = function(name, health, strength){
	this.name = name;
	this.health = health; 
	this.strength = strength;

	this.attack = function(defender){
		console.log(defender.health = defender.health - this.strength);
	}
}

var viking1 = new Viking("Josh", 100, 8);
var viking2 = new Viking("Faraz", 100, 5); 

viking1.attack(viking2); 
viking2.attack(viking1);
viking1.attack(viking2);
viking2.attack(viking1);

console.log(viking1.health); 
console.log(viking2.health); 