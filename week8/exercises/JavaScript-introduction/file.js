var exampleArray = [ 	"pizza",
						"hot dog",
						"pizza",
						"ice cream",
						"fish",
						"steak",
						"oranges"
					];

function findOccurrences(array, wordToLookFor){
	var totalOccurrences = 0;

	array.forEach(function(word){
		if (word === wordToLookFor){
			totalOccurrences++;
		}
	});

	return totalOccurrences

}

var count = findOccurrences(exampleArray, "pizza"); 
console.log(count); 

food = "Pizza"

if food == "Pizza"
	puts "Pizza is my favorite food"
elsif food == "Sushi"
	puts "Sushi is pretty good too"
else
	puts "That's weird..."
end

def add(a, b) 
	a + b
end

my_number = add(1, 2)