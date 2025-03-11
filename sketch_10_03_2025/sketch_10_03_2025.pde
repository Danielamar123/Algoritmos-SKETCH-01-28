int x = 0;
int y = 50;


ArrayList<Pez> peces = new ArrayList<Pez>();

import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;

FFT fft;

float rad;
float level;

float cieloR = 135;
float cieloG = 206;
float cieloB = 235;

void setup() {
  size(800, 730);
  background(#89CFF0);

  minim=new Minim(this);
  player=minim.loadFile("Rawayana & Danny Ocean - Binikini (Instrumental).mp3");
  player.play();

  fft=new FFT(player.bufferSize(), player.sampleRate());

  // Crear peces iniciales
  for (int i = 0; i < 20; i++) {
    peces.add(new Pez());
  }
}
void draw() {

  fft.forward(player.mix);
  level=fft.getBand(10);
  background(20, 100, 150); // Fondo marino azul (redibujado en cada cuadro)

  rad = (level *width/5);

  // Cielo degradado
  for (int i = 5; i < height * 0.75; i++) {
    float inter = map(i, 0, height * 0.75, 0, 1);
    int r = (int) lerp(cieloR, 200, inter);
    int g = (int) lerp(cieloG, 220, inter);
    int b = (int) lerp(cieloB, 255, inter);
    stroke(r, g, b);
    line(0, i, width, i);
  }

  // Sol
  fill(255, 255, 0);
  ellipse(width / 4, height / 4, 50, 50);

  // Dibujar y mover peces
  for (Pez pez : peces) {
    pez.dibujar();
    pez.mover();
  }
}

class Pez {
  float x, y, velocidadX, velocidadY;
  int tamano;
  color colorPez;

  Pez() {
    x = random(width);
    y = random(height * 0.75, height - tamano);
    velocidadX = random(-2, 2);
    velocidadY = random(-0.5, 0.5);
    tamano = (int) random(10, 30);
    colorPez = color(random(255), random(255), random(255));
  }

  void dibujar() {
    fill(colorPez);
    ellipse(x, y, tamano, tamano / 2);
    triangle(x - tamano / 2, y, x - tamano / 4, y - tamano / 4, x - tamano / 4, y + tamano / 4);
  }

  void mover() {
    x += velocidadX;
    y += velocidadY;

    // Rebotar en los bordes horizontales
    if (x < 0 || x > width) {
      velocidadX *= -1;
    }

    // Limitar el movimiento vertical a la parte inferior
    if (y < height * 0.75 || y > height - tamano) {
      velocidadY *= -1;
    }
  }
}
