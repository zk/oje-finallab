class Problem{
  int x,y;
  Problem(int X, int Y){
    x=X;
    y=Y;
  }
  int Add(){
    return x+y;
  }
  int subtract(){
    return x-y;
  }
  int multiply(){
    return x*y;
  }
  int divide(){
    return x/y;
  }
    void addDisplay(){
    text(x+" + "+y+" =",width/2,height/2);
  }
  void subDisplay(){
    text(x+" - "+y+" =",width/2,height/2);
  }
  void mulDisplay(){
    text(x+" * "+y+" =",width/2,height/2);
  }
  void divDisplay(){
    text(x+" / "+y+" =",width/2,height/2);
  }
}