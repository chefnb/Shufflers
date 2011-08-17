  class ObstaclePopulation {
    
  Obstacle[] obstacles;
  float depth=max(width,height)/sqrt(2);
  int density;    
  	 
   ObstaclePopulation(int density){ 
	
    this.density=density;
    this.obstacles = new Obstacle[density];
         
    for (int i = 0; i <= density-1; i++) {  
  
   
    obstacles[i]= new Obstacle(new PVector(random(-width/2,width/2),random(-height/2, height/2)));
    }	       
   }
	    		 
   void draw(){   
      for (int i = 0; i <= density-1; i++) {  
	  pushMatrix();
	  translate(obstacles[i].coords.x,obstacles[i].coords.y);
	  obstacles[i].draw();
	  popMatrix();
   }   
   }
	    	
  }

class Obstacle{

 PVector coords;
 int radius=10; 
  
 Obstacle(){} 
  
 Obstacle(PVector coords){   
		
	this.coords = coords;
	   		
	}

  void draw(){
		     
    fill(100,50,200);
    ellipse(0,0,radius,radius);
		  
   }	 
}
  

  

