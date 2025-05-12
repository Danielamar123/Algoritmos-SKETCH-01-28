Imagenes imagenes;  // Crear objeto para manejar las imágenes

void setup() {
  size(1210, 675);
  background(0);
  imagenes = new Imagenes();  // Inicializar imágenes
}

void draw() {
  background(0);
  image(imagenes.currentImage, 0, 0);  // Mostrar imagen actual
}

void keyPressed() {
  if (keyCode == RIGHT) {
    imagenes.siguiente();  // Avanzar a la siguiente imagen
  }
}

class Imagenes {
  PImage[] imagenesArray;  // Arreglo de imágenes
  PImage currentImage;
  int indice = 0;

  Imagenes() {
    imagenesArray = new PImage[11];
    imagenesArray[0] = loadImage("instrucciones.png");
    imagenesArray[1] = loadImage("f1.png");
    imagenesArray[2] = loadImage("f2.png");
    imagenesArray[3] = loadImage("f3.png");
    imagenesArray[4] = loadImage("f4.png");
    imagenesArray[5] = loadImage("f5.png");
    imagenesArray[6] = loadImage("f6.png");
    imagenesArray[7] = loadImage("f7.png");
    imagenesArray[8] = loadImage("f8.png");
    imagenesArray[9] = loadImage("f9.png");
    imagenesArray[10] = loadImage("f10.png");

    currentImage = imagenesArray[indice];  // Mostrar la primera
  }

  void siguiente() {
    if (indice < imagenesArray.length - 1) {
      indice++;
      currentImage = imagenesArray[indice];
    }
  }
}
