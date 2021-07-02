//carga de imagenes
PImage logo;
PImage br;
PImage ba;

//fuente
PFont miletra;

//variables
float posX1, posX2;
color verde;

void setup(){
  size(600, 600);
  frameRate (10);
  
//logo  
  logo = loadImage("logo.jpg");
  logo.resize(500,500);
  
//br  
  br = loadImage("br.jpg");
  
//ba
  ba= loadImage("ba.jpg");
  
  
 //fuente 
 textAlign(CENTER, CENTER);
 miletra= loadFont("HeartBreakingBad-50.vlw");


//variables valor inicial
 posX1= -100;
 
 posX2= 500; 
 
 verde = color(20, 85, 22);
  
}

void draw(){
  line(0, 0, width, height);
  println(frameCount);
  background(0,0,0);

//br  
  image(br,posX1,200,100, 100);
 if(posX1>135)
    posX1= 140;  
 else 
    posX1+=5;
    
//ba 
  image(ba,posX2,300,100,100);
   if(posX2<280)
     posX2= 240; 
   else 
    posX2-=5;
    
//logo
if (posX1 >= 140 && posX2 <= 240) image(logo,50,50);

if ((frameCount >=60)){
  fill (verde);
  textFont(miletra);
  text("creado por Vince Gilligan", 300, 500);}
  
//reiniciar

if((frameCount>90)){
  posX1=-100;
  posX2= 500;
  fill (frameCount=0);}

  



}
