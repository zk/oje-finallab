int score;
boolean multiplication,addition,subtraction,division,on,won,lost;
int[] dividend,divNum,yourAnswerM,yourAnswerA,yourAnswerS,yourAnswerD;
Problem[] m,a,s,d;
void setup(){
  size(400,400);
  on=false;
  multiplication=false;
  division=false;
  addition=false;
  subtraction=false;
  won=false;
  lost=false;
  score=0;
  divNum=new int[10];
  dividend=new int[10];
  m=new Problem[10];
  a=new Problem[10];
  s=new Problem[10];
  d=new Problem[10];
  yourAnswerM=new int[10];
  yourAnswerA=new int[10];
  yourAnswerS=new int[10];
  yourAnswerD=new int[10];
  for(int i=0;i<10;i++){
    divNum[i]=int(random(1,10));
    dividend[i]=divNum[i]*int(random(10));
    m[i]=new Problem(int(random(4)),int(random(4)));
    a[i]=new Problem(int(random(5)),int(random(5)));
    s[i]=new Problem(int(random(4,9)),int(random(5)));
    d[i]=new Problem(dividend[i],divNum[i]);
  }
  if(on==false)
    startscreen();
  if(multiplication)
    mscreen();
  if(addition)
     ascreen();
  if(subtraction)
    sscreen();
  if(division)
    dscreen();
  if(won)
    winscreen();
  if(lost)
    losescreen();
}

void startscreen(){
  score=0;
  background(0,0,255);
  textSize(50);
  textAlign(CENTER);
  fill(0);
  text("Miraculous Math",width/2,height/4);
  textSize(10);
  fill(255);
  rectMode(CENTER);
  rect(width/4,3*height/5,width/4,height/20);
  rect(3*width/4,3*height/5,width/4,height/20);
  rect(width/4,4*height/5,width/4,height/20);
  rect(3*width/4,4*height/5,width/4,height/20);
  fill(0);
  text("Addition",width/4,3*height/5);
  text("Subtraction",width/4,4*height/5);
  text("Multiplication",3*width/4,3*height/5);
  text("Division",3*width/4,4*height/5);
}
void mscreen(){
  yourAnswerM=new int[10]; 
  background(0,0,255);
  textSize(60);
  textAlign(CENTER);
  if(score>=5)
    won=true;
  if(score<5)
    lost=true;
}
void ascreen(){
  yourAnswerA=new int[10];
  background(0,0,255);
  textSize(60);
  textAlign(CENTER);
  if(score>=5)
    won=true;
  if(score<5)
    lost=true;
}
void sscreen(){
  yourAnswerS=new int[10];
  background(0,0,255);
  textSize(60);
  textAlign(CENTER);
  if(score>=5)
    won=true;
  if(score<5)
    lost=true;
}
void dscreen(){
  yourAnswerD=new int[10];
  background(0,0,255);
  textSize(60);
  textAlign(CENTER);
  if(score>=5)
    won=true;
  if(score<5)
    lost=true;
}
void winscreen(){
  background(0,255,0);
  textSize(50);
  textAlign(CENTER);
  fill(0,0,255);
  text("You Passed!",width/2,5*height/16);
  textSize(20);
  text("Score: "+score+"/10",width/2,5*height/8);
  fill(255);
  rectMode(CENTER);
  rect(width/2,13*height/16,width/3,height/12);
  textSize(10);
  fill(0,0,255);
  text("Return to start screen",width/2,13*height/16);
}
void losescreen(){
  background(255,0,0);
  textSize(50);
  textAlign(CENTER);
  fill(0);
  text("You Failed!",width/2,5*height/16);
  textSize(20);
  text("Score: "+score+"/10",width/2,5*height/8);
  fill(255);
  rectMode(CENTER);
  rect(width/2,13*height/16,width/3,height/12);
  fill(0);
  textSize(10);
  text("Return to start screen",width/2,13*height/16);
}
void mousePressed(){
  if(on==false){
    if(mouseX>width/8 && mouseX<3*width/8 && mouseY>23*height/40 && mouseY<25*height/40){
      on=true;
      addition=true;
    }
    if(mouseX>width/8 && mouseX<3*width/8 && mouseY>31*height/40 && mouseY<33*height/40){
      on=true;
      subtraction=true;
    }
    if(mouseX>5*width/8 && mouseX<7*width/8 && mouseY>23*height/40 && mouseY<25*height/40){
      on=true;
      multiplication=true;
    }
    if(mouseX>5*width/8 && mouseX<7*width/8 && mouseY>31*height/40 && mouseY<33*height/40){
      on=true;
      division=true;
    }
  }
  if(won || lost){
    if(mouseX>width/4 && mouseX<3*width/4 && mouseY<150*height/192 && mouseY<162*height/192){
      on=false;
    }
  }
}
void keyPressed(){
  if(multiplication){
  int i=0;
  while(i<m.length){
    m[i].mulDisplay();
    if(key=='1')
      yourAnswerM[i]=1;
    if(key=='2')
      yourAnswerM[i]=2;
    if(key=='3')
      yourAnswerM[i]=3;
    if(key=='4')
      yourAnswerM[i]=4;
    if(key=='5')
      yourAnswerM[i]=5;
    if(key=='6')
      yourAnswerM[i]=6;
    if(key=='7')
      yourAnswerM[i]=7;
    if(key=='8')
      yourAnswerM[i]=8;
    if(key=='9')
      yourAnswerM[i]=9;
    if(m[i].multiply()==yourAnswerM[i])
      score++;
    if(key==' ')
      i++;
   }
  }
  if(addition){
  int i=0;
  while(i<a.length){
    a[i].addDisplay();
    if(key=='1')
      yourAnswerA[i]=1;
    if(key=='2')
      yourAnswerA[i]=2;
    if(key=='3')
      yourAnswerA[i]=3;
    if(key=='4')
      yourAnswerA[i]=4;
    if(key=='5')
      yourAnswerA[i]=5;
    if(key=='6')
      yourAnswerA[i]=6;
    if(key=='7')
      yourAnswerA[i]=7;
    if(key=='8')
      yourAnswerA[i]=8;
    if(key=='9')
      yourAnswerA[i]=9;
    if(a[i].Add()==yourAnswerA[i])
      score++;
    if(key==' ')
      i++;
   }
  }
  if(subtraction){
  int i=0;
  while(i<s.length){
    s[i].subDisplay();
    if(key=='1')
      yourAnswerS[i]=1;
    if(key=='2')
      yourAnswerS[i]=2;
    if(key=='3')
      yourAnswerS[i]=3;
    if(key=='4')
      yourAnswerS[i]=4;
    if(key=='5')
      yourAnswerS[i]=5;
    if(key=='6')
      yourAnswerS[i]=6;
    if(key=='7')
      yourAnswerS[i]=7;
    if(key=='8')
      yourAnswerS[i]=8;
    if(key=='9')
      yourAnswerS[i]=9;
    if(s[i].divide()==yourAnswerS[i])
      score++;
    if(key==' ')
      i++;
   }
  }
 if(division){
  int i=0;
  while(i<d.length){
    d[i].divDisplay();
    if(key=='1')
      yourAnswerD[i]=1;
    if(key=='2')
      yourAnswerD[i]=2;
    if(key=='3')
      yourAnswerD[i]=3;
    if(key=='4')
      yourAnswerD[i]=4;
    if(key=='5')
      yourAnswerD[i]=5;
    if(key=='6')
      yourAnswerD[i]=6;
    if(key=='7')
      yourAnswerD[i]=7;
    if(key=='8')
      yourAnswerD[i]=8;
    if(key=='9')
      yourAnswerD[i]=9;
    if(d[i].divide()==yourAnswerD[i])
      score++;
    if(key==' ')
      i++;
   }
  }
}

        
 

  
  
  
    
    

    
    