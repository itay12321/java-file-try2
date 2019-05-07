class Number{
  public Segment[] arr;
  public int number;
  public boolean[] bool;
  public PVector up;  
  
  Number(PVector up, int n1){
    this.number = 8;
    this.bool = new boolean[7];
    for(int i = 0; i < 7; i++) bool[i] = true;
    this.up = up.copy();
    this.arr = new Segment[7];
    PVector rgt = new PVector(100,0);
    PVector dwn = new PVector(0,100);
    
    arr[0] = new Segment(this.up, rgt, n1);
    arr[1] = new Segment(this.up, dwn, n1); 
    arr[2] = new Segment(this.up.copy().add(rgt), dwn, n1); 
    arr[3] = new Segment(this.up.copy().add(dwn), rgt, n1);
    arr[4] = new Segment(this.up.copy().add(dwn), dwn, n1);
    arr[5] = new Segment(this.up.copy().add(dwn).add(rgt), dwn, n1);
    arr[6] = new Segment(this.up.copy().add(dwn).add(dwn), rgt, n1); 
  }
  
  void setNumber(int num){
    
    switch (num){
      case 0:
        this.arr[0].getBack();
        this.arr[1].getBack();
        this.arr[2].getBack();
        this.arr[3].disappear();
        this.arr[4].getBack();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
      case 1: 
        this.arr[0].disappear();
        this.arr[1].disappear();
        this.arr[2].getBack();
        this.arr[3].disappear();
        this.arr[4].disappear();
        this.arr[5].getBack();
        this.arr[6].disappear();
        break;
      case 2:
        this.arr[0].getBack();
        this.arr[1].disappear();
        this.arr[2].getBack();
        this.arr[3].getBack();
        this.arr[4].getBack();
        this.arr[5].disappear();
        this.arr[6].getBack();
        break;
      case 3:
        this.arr[0].getBack();
        this.arr[1].disappear();
        this.arr[2].getBack();
        this.arr[3].getBack();
        this.arr[4].disappear();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
      case 4: 
        this.arr[0].disappear();
        this.arr[1].getBack();
        this.arr[2].getBack();
        this.arr[3].getBack();
        this.arr[4].disappear();
        this.arr[5].getBack();
        this.arr[6].disappear();
        break;
      case 5:
        this.arr[0].getBack();
        this.arr[1].getBack();
        this.arr[2].disappear();
        this.arr[3].getBack();
        this.arr[4].disappear();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
      case 6: 
        this.arr[0].getBack();
        this.arr[1].getBack();
        this.arr[2].disappear();
        this.arr[3].getBack();
        this.arr[4].getBack();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
      case 7: 
        this.arr[0].getBack();
        this.arr[1].disappear();
        this.arr[2].getBack();
        this.arr[3].disappear();
        this.arr[4].disappear();
        this.arr[6].disappear();
        break;
      case 8: 
        this.arr[0].getBack();
        this.arr[1].getBack();
        this.arr[2].getBack();
        this.arr[3].getBack();
        this.arr[4].getBack();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
      case 9:
        this.arr[0].getBack();
        this.arr[1].getBack();
        this.arr[2].getBack();
        this.arr[3].getBack();
        this.arr[4].disappear();
        this.arr[5].getBack();
        this.arr[6].getBack();
        break;
    }
  }
  
  void show(){
    for(Segment s : this.arr) s.show();
  }
}
