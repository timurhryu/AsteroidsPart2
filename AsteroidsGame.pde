Star[] starry = new Star[5000];
Spaceship fly = new Spaceship();
//Asteroids bam = new Asteroids();
ArrayList <Asteroids> bam = new ArrayList <Asteroids>();
 

//ArrayList Asteroids 
public void setup() {
  size(500, 500);
  for (int i =0; i < starry.length; i++) {
    starry[i] = new Star();
    
  }
  
  for (int i =0; i < 30; i++) {
    bam.add(new Asteroids());
  }
}
public void draw() {
  background(1);
  
  fly.show();
  fly.move();
  for (int i =0; i<starry.length; i++) {
    starry[i].show();
  }
  for (int i =0; i < bam.size(); i++) {
    bam.get(i).show();
    bam.get(i).move();
  
    if(dist((float) bam.get(i).myCenterX,(float) bam.get(i).myCenterY,(float) fly.myCenterX,(float) fly.myCenterY)<20){
      bam.remove(i);
    }
  }
 
}
public void keyPressed() {
  if (keyCode == UP) {
    fly.accelerate(7);
  } else if (keyCode == RIGHT) {
    fly.turn(10);
  } else if (keyCode == LEFT) {
    fly.turn(-10);
  } else if (keyCode == DOWN) {
    fly.turn(Math.random()*360);
    fly.myCenterX = (Math.random()*width);
    fly.myCenterY = (Math.random()*height);
    fly.myXspeed = 0;
    fly.myYspeed = 0;
  }
}
