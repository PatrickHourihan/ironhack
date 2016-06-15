function eat(food){
	console.log("Eating some " + food);
}

eat("Pizza");

for (var i = 2; i <= 42; i += 2){
	console.log(i)
}

var i = 1;

while (i <= 42){
	console.log(i);
	i++
}

var foods = ["Pizza", "Cookies", "Bread"];

foods.forEach(function(food){
	console.log(food);
})

function logFood(food){
	console.log(food)
}

foods.forEach(logFood);

var capsFoods = foods.map(function(food) {
	return food.toUpperCase();
});

console.log(capsFoods);

var foodMsg = foods.reduce(function(pre, food){
	return pre + " and " + food; 
})

console.log(foodMsg); 

var breadless = foods.filter(function(food){
	return food !== "Bread";
})

console.log(breadless);

var food = "Pizza";

if (food === "Pizza"){
	console.log("Pizza is my favorite food too!");
} else if (food === "Sushi"){
	console.log("Sushi is pretty good...");
} else {
	console.log("That's weird...");
}
