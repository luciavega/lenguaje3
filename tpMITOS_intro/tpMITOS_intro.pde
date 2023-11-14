import gifAnimation.*;

int estado = 1;
int tiempoInicio;

Gif reyIntro;
Gif reyLoopEnojado;

void setup() {
  
  size(800, 800);
  
  reyIntro = new Gif(this, "rey_intro.gif");
  reyIntro.play();
  
  reyLoopEnojado = new Gif(this, "rey-loop_enojado.gif"); 
  reyLoopEnojado.play();
  
  tiempoInicio = millis();
  
}

void draw() {
  
  background(255);
  
  if (estado == 1) {    
    image(reyIntro, width/2 - reyIntro.width/2, height/2 - reyIntro.height/2);
    if (millis() - tiempoInicio > 2500) {
      estado = 2;
      tiempoInicio = millis(); 
    }
    
  } else if (estado == 2) {
    text("Ícaro y Dédalo Construyendo", width/2, height/2);
    
  } else if (estado == 3) {
    text("Ariadna y Teseo Escapan", width/2, height/2);
    
  } else if (estado == 4) {
    image(reyLoopEnojado, width/2 - reyLoopEnojado.width/2, height/2 - reyLoopEnojado.height/2);
    if (millis() - tiempoInicio > 1000) {
      estado = 1;  
      tiempoInicio = millis();  
    }
  }
  
}

void keyPressed() {
  
  if (key == '1') {
    estado = 1;  
    tiempoInicio = millis();  
    
  } else if (key == '2') {
    estado = 2;  
    tiempoInicio = millis(); 
    
  } else if (key == '3') {
    estado = 3;  
    tiempoInicio = millis();  
    
  } else if (key == '4') {
    estado = 4;  
    tiempoInicio = millis();  
  }
  
}
