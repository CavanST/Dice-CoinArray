int imageNumber, frameCounter;
PImage[] images = new PImage[8];
void setup(){
  size(400,400);
  
  for (int i = 0; i<6; i++){
    images[i] = loadImage("die_"+i+".png");
  }
  images[6] = loadImage("pound_head.png");
  images[7] = loadImage("pound_tail.png");
  imageNumber = 0;
  frameCounter = 0;
  }

void draw(){
  if(imageNumber % 2 == 0){
    background(0,0,255);
  }else{
    background(0,255,0);
  }
  imageMode(CENTER);
  image(images[imageNumber], width/2, height/2);
  if (frameCounter == 60){
    imageNumber++;
    if(imageNumber == 8) {
      imageNumber = 0;
    }
    frameCounter = 0;
  }
  frameCounter++;
}