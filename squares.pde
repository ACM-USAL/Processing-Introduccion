//color[] colores = {#007366, #0D998A, #21C4B3, #30F7E3, #D0FFFA}; 
int tam = 50;//Tamaño de los cuadrados
color aux;
boolean play=true;
int oldX=0, oldY=0;
int window=600;
void setup() {
  size(window,window); //Tamaño de la ventana
  noStroke(); //Dibujamos sin bordes
  //Dibujamos los cuadrados iniciales 
  for(int x=0; x < width; x += tam) {
    for(int y=0; y < height; y += tam) {
       aux = color(random(0,255),random(0,255),random(0,255));
       fill(aux);
       //fill(colores[int(random(0,5))]);
       rect(x, y, tam, tam);
    }
  }
}
 
void draw() {
  if (play){
    //Elegimos un color aleatorio para pintar el siguiente cuadrado
    //fill(colores[int(random(1,5))]);
    aux = color(random(0,255),random(0,255),random(0,255));
    fill(aux);
    //Escogemos un cuadrado aleatorio
    int x = int(random(width/tam))*tam;
    int y = int(random(width/tam))*tam;
    //Lo dibujamos
    rect(x, y, tam, tam);
  }
}

void keyPressed() {
  //Si se ha pulsado la barra espaciadora paramos o reanudamos
  if (key == 32) {
    play = !play;
  }
}

void mouseMoved() {
  int aux;
  int x=0, y=0;
  if (play)  return;
  else if ((mouseX>=oldX && mouseX<=oldX+tam)/* && (mouseY>=oldY && mouseY<=oldY+tam)*/)
    return;
  
  for (int i=0; i<=width; i=i+tam){
    if (i >= mouseX){
      x=i-tam;
      oldX=x;
      break;
    }
  }
  for (int i=0; i<=height; i=i+tam){
    if (i >= mouseY){
      y=i-tam;
      oldY=y;
      break;
    }
  }
  //fill(colores[(int)random(0,5)]);
  //fill(color(random(0,255),random(0,255),random(0,255)));
  fill(color(0,0,0));
  rect(x, y, tam, tam);
}

