	var radius = 0;
	var r = 1;
	var g = 255;
	var b = 1;
	var returnVar = false;
	makeCircle();


	function makeCircle() {
      myPanel = new jsgl.Panel(document.getElementById("panel"));

	  	  
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
	  
	  console.log(r+" "+g+" "+b);
	  
      circle.getStroke().setColor("rgb("+r+","+g+","+b+")");
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
	  window.setTimeout(makeCircle,50);
	}