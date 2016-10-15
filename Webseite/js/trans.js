
   	console.log( "begin!" );
$( document ).ready(function() {
	var info = "";
   	console.log( "ready!" );

	
$("#translator").keyup(function(event){
    if(event.keyCode == 13){
        $("#translator").click();
		info = document.getElementById("translator").value;
		console.log(info);
		document.getElementById("gettranslate").value = info;
    }
});

$("#gettranslate").keyup(function(event){
    if(event.keyCode == 13){
        $("#gettranslate").click();
		info = document.getElementById("gettranslate").value;
		console.log(info);
		document.getElementById("translator").value = info;
    }
});

});