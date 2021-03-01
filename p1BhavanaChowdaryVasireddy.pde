//Microwave interface//

// Importing ControlP5 is a controller Library used for sliders,buttons,toggles etc//
import controlP5.*;

ControlP5 x;
ControlP5 y;

void setup(){
  
  x= new ControlP5(this); 
  y=new ControlP5(this);
  background(#050505);
  size(1000, 500);
  fill(#C9D3B1);
  rect(50,50,500,400,10);
  fill(#FFFFFF);
  rect(650,2,4,500);
 
 PFont f= createFont("Times New Roman",20); 
 ControlFont f1= new ControlFont(f);
 x.setFont(f1);
 x.setColorBackground(#525455);
 x.addButton("1").setPosition(700,120).setSize(75,50).setValue(0);
 x.addButton("2").setPosition(785,120).setSize(75,50).setValue(0);
 x.addButton("3").setPosition(870,120).setSize(75,50).setValue(0);
 x.addButton("4").setPosition(700,180).setSize(75,50).setValue(0);
 x.addButton("5").setPosition(785,180).setSize(75,50).setValue(0);
 x.addButton("6").setPosition(870,180).setSize(75,50).setValue(0);
 x.addButton("7").setPosition(700,240).setSize(75,50).setValue(0);
 x.addButton("8").setPosition(785,240).setSize(75,50).setValue(0);
 x.addButton("9").setPosition(870,240).setSize(75,50).setValue(0);
 x.addButton("0").setPosition(785,300).setSize(75,50).setValue(0);
   
 PFont g= createFont("Times New Roman",10); 
 ControlFont f2= new ControlFont(g);
 y.setFont(f2);
 y.setColorBackground(#525455);
  y.addButton("Defrost").setPosition(870,300).setSize(75,50).setValue(0);
  y.addButton("Set\nTime").setPosition(700,300).setSize(75,50).setValue(0);
   
 fill(#FFFFFF);
 rect(700,360,245,3);
 
  y.addButton("Stop").setPosition(700,380).setSize(75,50).setValue(0);
  y.addButton("Open") .setPosition(785,380) .setSize(75,50) .setValue(0);
  y.addButton("Start\n30'sec").setPosition(870,380).setSize(75,50).setValue(0);
 
}
void draw() {   
  //timer
  fill(#525455);
  rect(760,60,120,40,10);
  fill(#F2F2F2);
  textSize(25);
  String a[]= count();
  text(a[1] + ":" + a[0],790,90);

}
int timer = 0;
int door = 0;
int cooktime = 0;
int timer1=0;

String[] count(){
  
  int sec1=timer1/60;
  int sec2=timer/60;
  int min1=0;
  int min2=0;
 if (sec1>60){
    min1=timer1/3600;
    sec1=sec1%60;
  }
  if(min1>=60){
    min1=min1%60;
  }
 if (sec2>60){
    min2=timer/3600;
    sec2=sec2%60;
  }
  if(min2>=60){
    min2=min2%60;
  }
 String sec=String.valueOf(sec2);
 String min=String.valueOf(min2);
 
 if (timer>0){
   timer=timer-1;
 }
 if (sec2<10){
   sec= "0" + sec2;
 }
 if (min2<10){
   min="0" + min;
 }
 if (door==1){
   timer=0;
 }
  if (cooktime==1){
    sec=String.valueOf(sec1);
    min=String.valueOf(min1);
    if (sec1<10){
      sec="0" + sec1;
    }
    if (min1<10){
      min="0" + min1;
    }
    if (door==1){
      timer1=0;
    }
  }
    String a[]={sec,min};
    return a;
  
}
void mouseClicked(){
   if(mouseX> 700 && mouseX < 780 && mouseY>120 && mouseY<170){ 
   /*if cooktime ==1 checks if the use is inputing with coook time or not. Cook time lets them enter the amount of seconds
   The default settind deals in minutes. It does this for every numbered button.
   */
  if(cooktime==1){
    timer1=(timer1*10)+((3600*1)/60);
  }
  else if(cooktime==0){
    timer += 3600; 
   }
  }
  if(mouseX> 785 && mouseX < 860 && mouseY>120 && mouseY<170){ 
  if(cooktime==1){
    timer1=(timer1*10)+((3600*2)/60);
  }
  else if(cooktime==0){
     timer += (3600*2); 
   }
  }
  if(mouseX> 870 && mouseX < 960 && mouseY>120 && mouseY<170){ 
   if(cooktime==1){
    timer1=(timer1*10)+((3600*3)/60);
  }
  else{
     timer += (3600*3); 
   }
  }
  if(mouseX> 700 && mouseX < 780 && mouseY>180 && mouseY<230){ 
    if(cooktime==1){
    timer1=(timer1*10)+((3600*4)/60);
  }
  else{
  timer += (3600*4);
   }
  }
  if(mouseX> 785 && mouseX < 860 && mouseY>180 && mouseY<230){ 
   if(cooktime==1){
    timer1=(timer1*10)+((3600*5)/60);
  }
  else{
  timer += (3600*5); 
   }
  }
  if(mouseX> 870 && mouseX < 960 && mouseY>180 && mouseY<230){ 
   if(cooktime==1){
    timer1=(timer1*10)+((3600*6)/60);
  }
  else{
  timer += (3600*6); 
   }
  }
  if(mouseX> 700 && mouseX < 780 && mouseY>240 && mouseY<290){ 
  if(cooktime==1){
    timer1=(timer1*10)+((3600*7)/60);
  }
  else{
  timer += (3600*7); 
   }
  }
  if(mouseX> 785 && mouseX < 860 && mouseY>240 && mouseY<290){ 
  if(cooktime==1){
    timer1=(timer1*10)+((3600*8)/60);
  }
  else{
  timer += (3600*8); 
   }
  }
  if(mouseX> 870 && mouseX < 960 && mouseY>240 && mouseY<290){ 
  if(cooktime==1){
    timer1=(timer1*10)+((3600*9)/60);
  }
  else{
  timer += (3600*9); 
   }
  }
  if(mouseX> 785 && mouseX < 860 && mouseY>300 && mouseY<350){ 
  if(cooktime==1){
     timer1=(timer1*10);
   }
   else{
     timer=0;
   }
  }
  //Defrost
   if (mouseX > 870 && mouseX < 940 && mouseY > 300 && mouseY < 350){
    if (cooktime==1){
      timer1=(timer1*10)+(60*2);
    }
    else if (cooktime==0){
      timer +=(3600*2);
    }
  }
  

    //Start(30sec)
   if (mouseX > 870 && mouseX < 940 && mouseY > 380 && mouseY < 430){
    if (cooktime==1){
      timer=timer1;
      cooktime=0;
    }
    else {
      timer +=(3600/2);
    }
  }
   //Stop button
   if (mouseX > 700 && mouseX < 780 && mouseY > 380 && mouseY < 430){
    
      timer1=0;
      cooktime=0;
      timer=0;
    }
    
  //door 
   if (mouseX > 785 && mouseX < 860 && mouseY > 380 && mouseY < 430){
    if (door==1){ 
      fill(#C9D3B1);
      rect(50, 50, 500, 400, 7);
      door = 0;
    }
    else if (door==0){
      fill(#EA9647);
       rect(50,50,500,400);
       door=1;
       timer=0;
    }
  }
    //set time
   if(mouseX > 700 && mouseX < 775 && mouseY>300 && mouseY<350){ 
     cooktime = 1;
 } 
}
