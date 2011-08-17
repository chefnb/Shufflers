
PImage frame;
ShufflerPopulation shuffler_population;
ObstaclePopulation obstacle_population;

void setup() {
  size(500, 250);  
  frameRate(30);  
  
  noStroke();
  shuffler_population=new ShufflerPopulation(25);	
  obstacle_population=new ObstaclePopulation(30);
		

  frame = loadImage("img/frame.gif"); 
}



void draw() {

  background(0);
  pushMatrix();
  translate(width/2,height/2);
  shuffler_population.update();
  obstacle_population.draw();
  shuffler_population.draw();				 
  popMatrix();			 

  image(frame,0,0);
}


// ---------------------------- Javascript interface methods ----------------------------


  
void toggleObstaclesAvoid(String state){
  if (state=="on")
  shuffler_population.obstaclesAvoid=true;
  else shuffler_population.obstaclesAvoid=false;
}


void toggleOwnSpeciesAvoid(String state){
  if (state=="on")
  shuffler_population.ownSpeciesAvoid=true;
  else shuffler_population.ownSpeciesAvoid=false;
}



void setRate(float rate){
 
shuffler_population.rate=rate;
   
}



