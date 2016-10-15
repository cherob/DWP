$( document ).ready(function() {
//Paste here coode:
	
	var mode = "An";
	var radius = 0;
	var r = 1;
	var g = 255;
	var b = 1;
	var returnVar = false;
	var running = true;
	
	$( "#button" ).on( "click", function() {
		if(running == true){
			running = false;
			mode = "Aus";
  		} else {
			running = true;
			mode = "An";
  		}
	});
	
	function getMode() {
		
	}
	
   	console.log( "ready!" );

	$.each(amountData, function( index, value ) {
  		console.log( index + " => " + value );
	});


	makeCircle();

	function makeCircle() {
		if(running){
			myPanel = new jsgl.Panel(document.getElementById("panel"));

			console.log(amountData);
			if(r>127){
			g++;	
			b--;}
			if(g>127){
			b++;	
			g--;}	
			if(b>127){
			r++;
			g--;}
			 // console.log(r+" "+g+" "+b);
			 //
			
			
			//circle.getStroke().setColor("rgb("+r+","+g+","+b+")");
	
			circle = myPanel.createCircle();
			circle.setCenterLocationXY(400,300);
			
			circle.setRadius(radius);
			circle.getStroke().setWeight(10);
			myPanel.addElement(circle);
			
			
			if(radius==250){
				returnVar = true;
			}else if(radius==0){
				returnVar = false;
			}
	
			if(returnVar == false){
				radius++;
			}else{
				radius--;
			}
		}
		window.setTimeout(makeCircle,500);
	
	}
	
	function map(x, in_min, in_max, out_min, out_max){
		return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}
	
});
