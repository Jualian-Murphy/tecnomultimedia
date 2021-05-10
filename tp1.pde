void setup(){
  size( 600, 600);
  background(0, 0, 0);
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100);
  
  noStroke();
  
}

void draw(){
  
 //blanco
 fill(0, 0, 99);
 triangle(300, 55, 190, 330, 430, 330);
  
  //ROJO
  fill( 0, 100, 100 );
  circle(300 ,55, 50);
  
 //NARANJA
 fill( 33, 98, 99);
 circle( 370, 100, 50);
 
 //AMARILLO
 fill(60, 100, 100);
 circle( 430, 170, 50);
 
 //VERDE 1
 fill(93, 99, 99);
 circle(490, 245, 50);
 
 //Verde 2
 fill(119, 99, 99);
 circle(430, 330, 50);
 
 //verde 3
 fill(147, 99, 99);
 circle(370, 400, 50);
 
 //cyan
 fill(179, 99, 99);
 circle(300, 450, 50);
 
 //azul 1
 fill(211, 99, 99);
 circle(240, 400, 50);
 
 //azul
 fill(239, 99, 99);
 circle(190 ,330, 50);
 
 //purpura
 fill(267, 99, 99);
 circle(130, 245, 50);
 
 //magenta
 fill(299, 99, 99);
 circle(190, 170, 50);
 
 //rosa
 fill(331, 99, 99);
 circle(240, 100, 50);
 

 
 
 
 
  
  
}
