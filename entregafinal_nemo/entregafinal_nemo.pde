Imagenes imagenes;  // Crear objeto para manejar las imágenes

void setup() {
  size(1050, 650);
  background(0);
  imagenes = new Imagenes();  // Inicializar imágenes
}

void draw() {
  background(0);
  image(imagenes.currentImage, 0, 0);  // Mostrar imagen actual en una posicion especifica
}

class Imagenes {
  PImage f1, f2, f3, f4;
  PImage currentImage;

  Imagenes() {
    f1 = loadImage("f1.png");
    f2 = loadImage("f2.png");
    f3 = loadImage("f3.png");
    f4 = loadImage("f4.png");

    currentImage = f1;  // Imagen inicial
  }

  void mostrarImagen1() {
    currentImage = f1;
  }

  void mostrarImagen2() {
    currentImage = f2;
  }

  void mostrarImagen3() {
    currentImage = f3;
  }

  void mostrarImagen4() {
    currentImage = f4;
  }
}

// Original que tiene que ver con la pelicula 
//void keyPressed() {
//  if (key == 'o') {
//    imagenes.mostrarImagen1();
//  } else if (key == 'n') {
//    imagenes.mostrarImagen2();
//  } else if (key == 'e') {
//    imagenes.mostrarImagen3();
//  } else if (key == 'm') {
//    imagenes.mostrarImagen4();
//  }

void mousePressed() {
  imagenes.mostrarImagen1();
}

void mouseMoved() {
  imagenes.mostrarImagen2();
}

void keyPressed() {
  if (key == ' ') {
    imagenes.mostrarImagen3();
  }

  if (keyCode == RIGHT) {
    imagenes.mostrarImagen4();
  }
}
