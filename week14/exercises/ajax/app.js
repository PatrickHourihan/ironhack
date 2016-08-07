$(document).on('ready', function() { 

	var getCharacters = function() {
 		$.ajax({
 			type: "GET",
 			url: "https://ironhack-characters.herokuapp.com/characters",
 			success: showCharacters,
 			error: function (error) {
 				console.log("Error!");
 				console.log(error.responseText);
 			}
 		})
	}

	$('#fetch').click(function() {
		getCharacters()
 	})

	function showCharacters (response) {
		var listOfCharacters = response; 

		listOfCharacters.forEach(function (theCharacter) {
			var html = `
				<li> 
					<h2>${theCharacter.name}</h2>
				</li>
				<li> 
					${theCharacter.occupation} 
				</li>
				<li>
					${theCharacter.weapon}
				</li>
				<br/>
			`;
		$('#display').append(html);
		});
	}

	function validateForm () {
		var counter = 0;

		$('.required').each(function (index, element){

			if ($(element).val() === ""){
				counter++;
			}

		});

		return counter
	}

	$("form").on("submit", function(event){
		event.preventDefault();

		if (validateForm() === 0) {

			var formData = $(this).serializeArray();
			console.log(formData);
	 		$.ajax({
	 			type: "POST",
	 			url: "https://ironhack-characters.herokuapp.com/characters",
	 			data: formData,
	 			success: function(response) {
	 				getCharacters()
	 			},
	 			error: function (error) {
	 				console.log("Error!");
	 				console.log(error.responseText);
	 			}
	 		})
		} else {
			alert("Invalid Form");
		}
	});
 });