
   	console.log( "begin!" );
$( document ).ready(function() {

   	console.log( "ready!" );
//Variable	
	var size = 25;
	var counter = 0;
	var placeholderSide = $("#panel").width()/2.6;
	var placeholderLeft = 190;
	var maxValue = 0;
	var visibility = 0;
	var myPanel = new jsgl.Panel(document.getElementById('panel'));
	var myAnimator = new jsgl.util.Animator();
//Paste here coode:


	drawPanel();
	
	$(window).resize(function() {
		myPanel.clear();
		size = 25;
		counter = 0;
		placeholderSide = $("#panel").width()/2.6;
		placeholderLeft = 190;
		maxValue = 0;
		console.log($("#panel").width());
		drawPanel();
		
	});
	
	function drawPanel (){
		$.each(amountData, function( index, value ) {
			if(value>maxValue){
				maxValue = value+50;
			}
		});
		
		$.each(amountData, function( index, value ) {
			//console.log( index + " => " + value );
			if(counter > 9){
				makeQuadrat(counter+1, value, counter+1+". "+index);
				makeText(counter+1, value, counter+1+". "+index);
			}else{
			makeQuadrat(counter, value, counter+1+". "+index);
			makeText(counter, value, counter+1+". "+index);
			}
			counter++;
		});
		console.log($("#panel").width());
	}
	
	function makeText(pos, length, letters){
		var myLabel = myPanel.createLabel();
		myLabel.setLocationXY(map($("#panel").width(),1106,2500,10,500)+placeholderLeft,pos*(size+size/5));
		myLabel.setText(letters+" ("+length+")");
		myLabel.setFontSize(size-size/5);
		myLabel.setFontColor("inherit");
		myLabel.setFontFamily("sans-serif");
		myPanel.addElement(myLabel);
	}
	
	function makeQuadrat(pos, length, letters) {
		var myRect = myPanel.createRectangle();
		myRect.setRadiiXY(10,500);
		myRect.getFill().setColor("#c1ff7a");
		myRect.getStroke().setColor("#afdd7a");
		myRect.setLocationXY(placeholderSide,pos*(size+size/5));
		myRect.setSizeWH(map(length,0,maxValue,0,$("#panel").width()-placeholderSide),size);
		myPanel.addElement(myRect);
	}
	
	function map(x, in_min, in_max, out_min, out_max){
		return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}
	
});
