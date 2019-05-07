class Segment{
  public PVector start;
  public PVector end;
  public PVector dir;
  public PVector mid;
  public float dista;
  public float speed = 2;


  Segment(PVector start, PVector end, PVector dir){
    this.start = start.copy();
    this.end = end.copy();
    this.dir = dir.copy();
    this.mid = this.end.copy().add(this.start).div(2);
  }
  
  Segment(PVector start, PVector tail, int n1){
    this.start = start.copy();
    this.end = start.copy().add(tail);
    this.dir = tail.copy();
    this.mid = this.end.copy().add(this.start).div(2);
    this.speed = n1;
  }

  void show(){
    strokeWeight(10);
    PVector mida = this.end.copy().add(this.start).div(2);
    this.dista = dist(mida.x, mida.y, this.mid.x, this.mid.y);
    stroke(0, 255 - dista);
    line(this.start.x, this.start.y, this.end.x, this.end.y);
  }
  
  void getBack(){
    PVector mida = this.end.copy().add(this.start).div(2);
    if(abs(mida.x - this.mid.x) < 2){
      if(mida.y < this.mid.y) this.dir = new PVector(0, this.speed);
      else this.dir = new PVector(0, -this.speed);
    }
    if(abs(mida.y - this.mid.y) < 2){
      if(mida.x < this.mid.x) this.dir = new PVector(this.speed, 0);
      else this.dir = new PVector(-this.speed, 0);
    }
    if(dist(mida.x, mida.y, this.mid.x, this.mid.y) > 3) this.move();
  }
  
  void disappear(){
    if(this.start.x == this.end.x){
      float mid = (this.start.y + this.end.y) / 2;
      if(mid < height / 2) this.dir = new PVector(0, -this.speed);
      else this.dir = new PVector(0, this.speed);
    }
    if(this.start.y == this.end.y){
      float mid = (this.start.x + this.end.x) / 2;
      if(mid < width / 2) this.dir = new PVector(-this.speed, 0);
      else this.dir = new PVector(this.speed, 0);
    }
    if(!out()) this.move();
  }
  
  boolean out(){
    if(this.dista > 255) return true;
    if((this.start.x < 0 && this.end.x < 0) || (this.start.x > width && this.end.x > width)) return true;
    if((this.start.y < 0 && this.end.y < 0) || (this.start.y > height && this.end.y > height)) return true;
    return false;
  }
  
  void move(){
    this.start.add(this.dir);
    this.end.add(this.dir); 
  }
}
