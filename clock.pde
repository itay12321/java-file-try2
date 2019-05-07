Number n1, n2, n3, n4, n5, n6;
void setup() {
  frameRate(50); 
  size(1050, 400);
  //fullScreen();
  background(255);
 
  n1 = new Number(new PVector(50, 100), 2);
  n2 = new Number(new PVector(200,100), 2);
  n3 = new Number(new PVector(400,100), 3);
  n4 = new Number(new PVector(550,100), 4);
  n5 = new Number(new PVector(750,100), 5);
  n6 = new Number(new PVector(900,100), 6);
}

void draw(){
  println(frameRate);
  background(255);
  n1.setNumber(hour() / 10);
  n2.setNumber(hour() % 10);
  n3.setNumber(minute() / 10);
  n4.setNumber(minute() % 10);
  n5.setNumber(second() / 10);
  n6.setNumber(second() % 10);
 
  n1.show();
  n2.show();
  n3.show();
  n4.show();
  n5.show();
  n6.show();
  stroke(#ff0000, 255);
  dots();
}

void dots(){
  float s = frameCount % 2000;
  if(abs((s % 500) / 50 - 6) > 2){
    circle(350, 140, 10);
    circle(350, 260, 10);
    circle(700, 140, 10);
    circle(700, 260, 10);
  }
  else{
    if(s < 500 || (s > 1000 && s < 1500)){
      float a, a1, a2, a3, a4;
      if(s > 500) a = map((s % 500) / 50, 4, 8, 0, PI);
      else a = map((s % 500) / 50, 8, 4, 0, PI);
      a1 = atan2(-60, -175) + a;
      a2 = atan2( 60, -175) + a;
      a3 = atan2(-60,  175) + a;
      a4 = atan2( 60,  175) + a;
      float dist = dist(350, 140, 525, 200);
      
      circle(525 + cos(a1) * dist, 200 + sin(a1) * dist, 10);
      circle(525 + cos(a2) * dist, 200 + sin(a2) * dist, 10);
      circle(525 + cos(a3) * dist, 200 + sin(a3) * dist, 10);
      circle(525 + cos(a4) * dist, 200 + sin(a4) * dist, 10);
    }
    else{
      float x1 = map((float)(s % 500) / 50, 4, 8, 350, 700);
      float x2 = map((float)(s % 500) / 50, 4, 8, 700, 350);
      float y1 = map((float)(s % 500) / 50, 4, 8, 140, 260);
      float y2 = map((float)(s % 500) / 50, 4, 8, 260, 140);;
      circle(x1, y1, 10);
      circle(x1, y2, 10);
      circle(x2, y1, 10);
      circle(x2, y2, 10);
    } 
  }
}
