 // se inicia desde un valor que no existe en la tabla numerica del reloj
int lastSecond = -1;  

// Lista para las bolitas
ArrayList<Ball> balls = new ArrayList<Ball>();  

void setup() {
  size(500, 500);
  textSize(40);
}

void draw() {
// se crea la variable de segundo
  int s = second();
  
// se establece que el numero va a cambiar y se verifica que eso pase 
  if (s != lastSecond) {  
    lastSecond = s;  
    
    // Crear bolitas en diferentes intervalos de tiempo
       if (s % 1 == 0) {  
      balls.add(new Ball(random(width), height, color(#FD9F9A, 70)));
    }
    
    if (s % 10 == 0) {  
      balls.add(new Ball(random(width), height, color(#ED6665,150)));
    }
    
    if (s % 20 == 0) {  
      balls.add(new Ball(random(width), height, color(#BBC887,180)));
    }
    
    if (s % 30 == 0) {  
      balls.add(new Ball(random(width), height, color(#FFF6A0,180)));
    }
    
    if (s % 40 == 0) {  
      balls.add(new Ball(random(width), height, color(#E1A758,180)));
    }
    
    if (s % 50 == 0) {  
      balls.add(new Ball(random(width), height, color(#83C0B8,180)));
    }
    
    if (s % 60 == 0) {  
      balls.add(new Ball(random(width), height, color(#F26749,180)));
    }
  }

  background(#F3E8D9); 
  
// Mover y mostrar las bolitas
  for (int i = balls.size() - 1; i >= 0; i--) {
   Ball b = balls.get(i);
   // actualizar la posición de la bolita
    b.update();  
   //dibujar la bolita
    b.display(); 
  }
}

class Ball {
  float x, y;       
  color c;          
  float speedX;     
  float speedY;     
  float diameter = 30;  
  
  // creacion de la clase ball
  Ball(float startX, float startY, color ballColor) {
    x = startX;           
    y = startY;           
    c = ballColor;        
    speedX = random(-3, 3); 
    speedY = random(-3, 3); 
  }
  
  // forma de actualizar la posición de la bolita
  void update() {
    x += speedX;  // Mover la bolita en X
    y += speedY;  // Mover la bolita en Y
    
    //  para que la bolita rebote al tocar los bordes de la pantalla
    if (x < 0 || x > width) {
      speedX *= -1;  // Rebote en X
    }
    if (y < 0 || y > height) {
      speedY *= -1;  // Rebote en Y
    }
  }
  
  // la bolita
  void display() {
    fill(c);           
    noStroke();        
    ellipse(x, y, diameter, diameter);  
  }
}
