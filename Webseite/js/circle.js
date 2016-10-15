	$( document ).ready(function() {
//Paste here coode:
	
	var mode = "An";
	var radius = 0;
	var r = 1;
	var g = 255;
	var b = 1;
	var returnVar = false;
	var runing = true;
	
	$( "#button" ).on( "click", function() {
  if(runing == true){
	runing = false;
	mode = "Aus";
  }else{
	runing = true;
	mode = "An";
  }
});
	
	function getMode() {
		
	}
	
   console.log( "ready!" );

	
	makeCircle();

	function makeCircle() {
if(runing){
	myPanel = new jsgl.Panel($("#panel"));

	console.log(getAmount);
		
	if(r>127){
	g++;
	
	b--;
	}
	
	if(g>127){
	b++;
	
	g--;
	}
	
	
	if(b>127){
	r++;
	g--;
	}
	
	circle = myPanel.createCircle();
	circle.setCenterLocationXY(400,300);
	
	 // console.log(r+" "+g+" "+b);

	
	
	//circle.getStroke().setColor("rgb("+r+","+g+","+b+")");
	circle.setRadius(getAmount.eins);
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
	});