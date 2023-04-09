PImage miImagen;

void setup(){
   size(800, 400);
   
   miImagen = loadImage ("Velero.jpg");
   
}
void draw(){
   
  // Cambia el color de fondo a celeste claro
  background(152, 195, 236);
    
  // Dibuja el mar
  noStroke(); // Quita el borde negro
  fill(50, 150, 200);
  rect(0, height/2 + 120, width, height/2 - 120);
  
    // Dibuja el rectángulo marrón
  fill(139, 69, 19);
  rect(500, 325, 200, 10);
  
  // Dibuja el velero
  fill(255);
  noStroke();
  

  // Cuerpo del velero
  noStroke();
  rect(500, 300, 200, 25);
  
  // Triángulos del velero
  triangle(500, 300, 500, 270, 550, 300);
  triangle(700, 300, 700, 280, 650, 300);
  
  // Mástiles
  stroke(0);
  strokeWeight(5);
  line(580, 300, 580, 150);
  line(650, 300, 650, 150);
  
  // Velas
  fill(255);
  triangle(580, 250, 580, 150, 500, 250);
  triangle(650, 250, 650, 150, 725, 250);
  triangle(580, 250, 580, 150, 625, 250 );
 
  
 
  image(miImagen, 0, 0, 400, 400);
  
  

  
}
