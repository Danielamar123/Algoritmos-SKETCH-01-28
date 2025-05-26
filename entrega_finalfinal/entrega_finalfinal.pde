import ddf.minim.*;

Imagenes imagenes;
Minim minim;
AudioPlayer musica;

void setup() {
  size(1920, 1080);
  background(0);

  imagenes = new Imagenes();

 
  minim = new Minim(this);
  musica = minim.loadFile("Este fueee.mp3");

  if (musica == null) {
  } else {
    musica.loop();  // Reproducir en bucle
  }
}

void draw() {
  background(0);

  if (imagenes.currentImage != null) {
    if (imagenes.getNombreActual().equals("5.png")) {
      image(imagenes.currentImage, 0, 0, width, height);
    } else {
      image(imagenes.currentImage, 0, 0);
    }
  } else {
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Imagen no disponible", width / 2, height / 2);
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    imagenes.siguiente();
  }

  if (keyCode == LEFT) {
    imagenes.anterior();
  }

  if (key == 's') {
    musica.pause();  // Pausar música
  }

  if (key == 'p') {
    musica.loop();   // Reanudar en bucle
  }
}

void stop() {
  musica.close();
  minim.stop();
  super.stop();
}

class Imagenes {
  PImage[] imagenesArray;
  String[] nombres;
  PImage currentImage;
  int indice = 0;

  Imagenes() {
    nombres = new String[] {
      "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.png",
      "6.jpg", "7.jpg", "8.jpg", "9.jpg", "png.png",",.jpg"
    };

    imagenesArray = new PImage[nombres.length];

    for (int i = 0; i < nombres.length; i++) {
      imagenesArray[i] = loadImage(nombres[i]);
      if (imagenesArray[i] == null) {
      }
    }

    currentImage = imagenesArray[indice];
  }

  void siguiente() {
    if (indice < imagenesArray.length - 1) {
      indice++;
      currentImage = imagenesArray[indice];
    }
  }

  void anterior() {
    if (indice > 0) {
      indice--;
      currentImage = imagenesArray[indice];
    }
  }

  String getNombreActual() {
    return nombres[indice];
  }
}
