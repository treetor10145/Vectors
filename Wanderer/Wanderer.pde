//declare variables
float diam;
PVector loc,vel,acc;
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
loc = new PVector (width/2, height/2);
vel = PVector.random2D();
  diam = 80;

}

void draw() {
  //draw background to cover previous frame
  background(0);
  acc = PVector.random2D();
  acc.mult(0.1);
  //draw ball
  if (dist(loc.x,loc.y,mouseX,mouseY) <= diam/2){;
    fill(random(255),random(255),random(255));
  } else {
  fill(255,255,255);
  }
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
  loc.add(vel);
  vel.add(acc);
  vel.limit(4);
  //wrap the ball's position
  if (loc.x >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}