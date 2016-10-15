   	console.log( "begin!" );
$( document ).ready(function() {

   	console.log( "ready!" );
	
	$("#menuButton").click(function() {
	    var x = document.getElementById("myTopnav");
	    if (x.className === "topnav") {
	        x.className += " responsive";
	    } else {
	        x.className = "topnav";
	    }
	});
});