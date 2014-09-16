int Lives = 3;
int Score = 0;
float Ycord = random(0, 100);
float Ycord2 = random(200, 300);
float Ycord3 = random(400, 500);
float A = 0;
float B = 0;
float C = 0;
PImage RainDrop;
PImage RainDrop2;
PImage RainDrop3;
PImage Bucket;  
PImage photo;
PImage Boo;
void setup() {
  Boo=loadImage("Boooo.png");
  RainDrop=loadImage("Rain Drop.png");
  RainDrop2=loadImage("Rain Drop.png");
  RainDrop3=loadImage("Rain Drop.png");
  Bucket=loadImage("BucketMonster.png");
  photo = loadImage("Grass.jpg");
  size(1500, 750);
}
void draw() {
  background(photo);
  Ycord = Ycord +4;
  if (Ycord > 700) {
     Ycord = 50;
        A = random(100, 1400);
    Lives = Lives-1;
  }
  Ycord2 = Ycord2 +4;
  if (Ycord2 > 700) {
     Ycord2 = 50;
        B = random(100, 1400);
    Lives = Lives-1;
  }
  Ycord3 = Ycord3 +4;
  if (Ycord3 > 700) {
     Ycord3 = 50;
        C = random(100, 1400);
    Lives = Lives-1;
  }
  if (Ycord > 550) {
    if (A > mouseX-120) {
      if (A < mouseX+120) {
        Ycord = 50;
        A = random(100, 1400);
        Score = Score + 1;
      }
    }
  }
  if (Ycord2 > 550) {
    if (B > mouseX-120) {
      if (B < mouseX+120) {
        Ycord2 = 50;
        B = random(100, 1400);
        Score = Score + 1;
      }
    }
  }
  if (Ycord3 > 550) {
    if (C > mouseX-120) {
      if (C < mouseX+120) {
        Ycord3 = 50;
        C = random(100, 1400);
        Score = Score + 1;
      }
    }
  }
 if (Lives < 1) {
    image (Boo,1,1);
  }
  
  image(RainDrop, A, Ycord);
  image(RainDrop, B, Ycord2);
  image(RainDrop, C, Ycord3);
  image(Bucket, mouseX-120, 500);
  text(Score+" Points", 1300, 720);
  text(Lives+" Lives", 1300, 740);
}

