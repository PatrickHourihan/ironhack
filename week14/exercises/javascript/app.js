$(document).on('ready', function() { 
 $('#hide').click(function() {
   $('.container').fadeOut();
 }); 
});

$(document).on('ready', function() { 
 $('#show').click(function() {
   $('.container').fadeIn();
 }); 
});

$(document).on('ready', function() { 
 $('.unicorn-mode').click(function() {
   $('.rainbow').colorize();
 }); 
});

function colorize(){
	
};