PImage Imagen1, Imagen2, Imagen3;
float posX;
boolean startMoving = false;
boolean textOffScreen = false;
boolean fadeInText = false;
boolean fadeOutText = false;
boolean showImagen3 = false;
float alpha = 0;

void setup() {
  size(640, 480);
  Imagen1 = loadImage("Velero1.jpg");
  Imagen2 = loadImage("Velero2.jpg");
  Imagen3 = loadImage("Velero3.jpg");
  posX = width/2;
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  image(Imagen1, 0, 0);
  
  textSize(24);
  if (millis() >= 4000 && !startMoving) {
    startMoving = true;
  }
  if (startMoving) {
    posX += 2; 
  }
  if (posX - textWidth("Un velero funciona mediante la acción del viento en sus velas.")/2 > width && !textOffScreen) {
    textOffScreen = true;
  }
  if (textOffScreen) {
    image(Imagen2, 0, 0, width, height); 
    if (millis() >= 7000 && !fadeInText) {
      fadeInText = true;
    }
    if (fadeInText && !fadeOutText) {
      alpha += 5;
      if (alpha >= 255) {
        alpha = 255;
        if (millis() >= 10000) {
          fadeOutText = true;
        }
      }
      fill(0, 0, 0, alpha);
      textAlign(CENTER);
      text("El viento determina la dirección y la velocidad.", width/2, height/2);
    }
    else if (fadeOutText) {
      alpha -= 2;
      if (alpha <= 0) {
        alpha = 0;
        fadeInText = false;
        showImagen3 = true;
      }
      fill(0, 0, 0, alpha);
      textAlign(CENTER);
      text("El viento determina la dirección y la velocidad.", width/2, height/2);
    }
  }
  else {
    text("Un velero funciona mediante la acción del viento en sus velas.", posX, height/2 + 50);
  }
  
  if (showImagen3) {
    image(Imagen3, 0, 0, width, height); 
    if (alpha < 255) {
      alpha += 5; 
    }
    fill(255, 255, 255, alpha);
    textAlign(CENTER);
    text("Se utiliza un timón para hacer maniobras", width/2, height/2);
  }
}

void keyPressed() {
  if (key == ' ') { 
    
    posX = width/2;
    startMoving = false;
    textOffScreen = false;
    fadeInText = false;
    fadeOutText = false;
    showImagen3 = false;
    alpha = 0;
  }
}
