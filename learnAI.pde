Population test;

PVector goal = new PVector(400, 10);


void setup() {
  size(800,800);
  test = new Population(1000);

}

void draw() {
  background(255);
  fill(0);
  text("Generation " + test.generation, 10,10);
  
  fill(0,0,255);
  
  rect(0,200,600,10);
  rect(200,500,600,10);
  
  fill(255,0,0);
  ellipse(goal.x,goal.y,10,10);
   
  
  if (test.allDotsDead()){
    test.calculateFitness();
    test.naturalSelection();
    test.mutateBabies();
  
  
  }else{
    
    test.update();
    test.show();
  }

}
