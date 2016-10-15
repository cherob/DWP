
   	console.log( "begin!" );
$( document ).ready(function() {

   	console.log( "ready!" );
//Variable	
	var size = 50;
	var counter = 0;
	var running = true;
	var placeholderSide = $("#panel").width()/3;
	var placeholderTop = 10;
	var maxValue = 0;
	
	var myPanel = new jsgl.Panel(document.getElementById('panel'));
	
//Paste here coode:


	drawPanel();
	
	$(window).resize(function() {
		drawPanel();
		
	});

	function drawPanel (){
		$.each(amountData, function( index, value ) {
			if(value>maxValue){
				maxValue = value+50;
			}
		});
		
		$.each(amountData, function( index, value ) {
			console.log( index + " => " + value );
			makeQuadrat(counter, value, index);
			counter++;
		});
		console.log($("#panel").width());
	}
	//$("#panel").append("<font color=black size="+10+">i<br>i<br>i<br>i<br>i<br></font>")
	
	
	function makeQuadrat(pos, length, letters) {
		var myLabel = myPanel.createLabel();
		myLabel.setLocationXY(10,pos*(size+size/5)+placeholderTop);
		myLabel.setText(letters+" ("+length+")");
		myLabel.setFontSize(size-size/5);
		myLabel.setFontColor("inherit");
		myLabel.setFontFamily("sans-serif");
		myPanel.addElement(myLabel);
		var myRect = myPanel.createRectangle();
		myRect.setRadiiXY(10,500);
		myRect.getFill().setColor("#c1ff7a");
		myRect.getStroke().setColor("#afdd7a");
		myRect.setLocationXY(placeholderSide,pos*(size+size/5)+placeholderTop);
		myRect.setSizeWH(map(length,0,maxValue,0,$("#panel").width()-placeholderSide),size);
		myPanel.addElement(myRect);		
	}
	
	function map(x, in_min, in_max, out_min, out_max){
		return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}
	
});
