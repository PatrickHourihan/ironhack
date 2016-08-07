$(document).ready(function() { 
	
	$('.js-artist-list').on("click", ".artist-li", function(event){
		var artistID = $(event.currentTarget).data("artist-id")
		var artistName = $(event.currentTarget).data("artist-name")

		$.ajax({
			url: `https://api.spotify.com/v1/artists/${artistID}/albums`,
			success: function(response){
				showAlbums(response, artistName);
			},
			error: albumError,
		})
	})

	$('.js-artist-form').on("submit", function(event){
		event.preventDefault();

		var searchTerm = $(".js-artist-input").val();

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`,
			success: showArtists,
			error: artistError,
		})
	})
})

function showAlbums(response, artistName){
	$(".modal-artist-name").text(artistName);
	var albums = response.items;
	albums.forEach(appendAlbum);
	$(".modal").modal("show");
}

function appendAlbum(album){
	var html = `
		<li class="album-li">
			${album.name}
		</li>
	`
	$(".modal-artist-list").append(html)
}

function albumError(error){
	console.log(error);
}

function showArtists(response){
	console.log("Response", response);

	var artists = response.artists.items;

	artists.forEach(appendArtist);
}

function appendArtist(artist){
	var artistImage;

	if (artist.images[0]){
		artistImage = artist.images[0].url
	} else {
		artistImage = "http://placehold.it/200x200"
	}

	var html = `
		<li class="artist-li" data-artist-id=${artist.id} data-artist-name="${artist.name}">
			<h3>${artist.name}</h3>
			<img src=${artistImage}>
		</li>
	`
	$(".js-artist-list").append(html)
}

function artistError(error){
	console.log("Error!", error.responseText)
}
