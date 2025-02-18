// Bola 1
float xSpeed1 = 6.0; 
float ySpeed1 = 4.5; 
int xDirection1 = 1; 
int yDirection1 = 1; 
float xpos1;
float ypos1;  

// Bola 2
float xSpeed2 = 6.0; 
float ySpeed2 = 4.0; 
int xDirection2 = 1; 
int yDirection2 = 1; 
float xpos2;
float ypos2;  

// Bola 3
float xSpeed3 = 6.0; 
float ySpeed3 = 5.5; 
int xDirection3 = 1; 
int yDirection3 = 1; 
float xpos3;
float ypos3;  

// Bola 4
float xSpeed4 = 3.0; 
float ySpeed4 = 5.0; 
int xDirection4 = 1; 
int yDirection4 = 1; 
float xpos4;
float ypos4;  

// Bola 5
float xSpeed5 = 3.0; 
float ySpeed5 = 6.5; 
int xDirection5 = 1; 
int yDirection5 = 1; 
float xpos5;
float ypos5;  

// Bola 6
float xSpeed6 = 3.0; 
float ySpeed6 = 7.0; 
int xDirection6 = 1; 
int yDirection6 = 1; 
float xpos6;
float ypos6;  

void setup() {
  size(800, 800); 
  
  // Ubicación de las bolas
  xpos1 = width / 3;  
  ypos1 = height / 2;
  
  xpos2 = width * 2 / 3;
  ypos2 = height / 2;
  
  xpos3 = width / 2;
  ypos3 = height / 3;
  
  xpos4 = width / 3;
  ypos4 = height / 3;
  
  xpos5 = width / 1;
  ypos5 = height / 4;
  
  xpos6 = width / 4;
  ypos6 = height / 2;
  
  noStroke();  
}

void draw() {
  background(0);  
  
  // Bola 1
  xpos1 += xSpeed1 * xDirection1;
  ypos1 += ySpeed1 * yDirection1;
  
  // Rebote en x
  if (xpos1 > width || xpos1 < 0) {
    xDirection1 *= -1;  
  }
  
  // Rebote en y
  if (ypos1 > height || ypos1 < 0) {
    yDirection1 *= -1;  
  }
  
  // Bola 2
  xpos2 += xSpeed2 * xDirection2;
  ypos2 += ySpeed2 * yDirection2;
  
  // Rebote en x
  if (xpos2 > width || xpos2 < 0) {
    xDirection2 *= -1;  
  }
  
  // Rebote en y
  if (ypos2 > height || ypos2 < 0) {
    yDirection2 *= -1;  
  }
  
  // Bola 3
  xpos3 += xSpeed3 * xDirection3;
  ypos3 += ySpeed3 * yDirection3;
  
  // Rebote en x
  if (xpos3 > width || xpos3 < 0) {
    xDirection3 *= -1;  
  }
  
  // Rebote en y
  if (ypos3 > height || ypos3 < 0) {
    yDirection3 *= -1;  
  }
  
  // Bola 4
  xpos4 += xSpeed4 * xDirection4;
  ypos4 += ySpeed4 * yDirection4;
  
  // Rebote en x
  if (xpos4 > width || xpos4 < 0) {
    xDirection4 *= -1;  
  }
  
  // Rebote en y
  if (ypos4 > height || ypos4 < 0) {
    yDirection4 *= -1;  
  }
  
  // Bola 5
  xpos5 += xSpeed5 * xDirection5;
  ypos5 += ySpeed5 * yDirection5;
  
  // Rebote en x
  if (xpos5 > width || xpos5 < 0) {
    xDirection5 *= -1;  
  }
  
  // Rebote en y
  if (ypos5 > height || ypos5 < 0) {
    yDirection5 *= -1;  
  }
  
  // Bola 6
  xpos6 += xSpeed6 * xDirection6;
  ypos6 += ySpeed6 * yDirection6;
  
  // Rebote en x
  if (xpos6 > width || xpos6 < 0) {
    xDirection6 *= -1;  
  }
  
  // Rebote en y
  if (ypos6 > height || ypos6 < 0) {
    yDirection6 *= -1;  
  }
  
  // Dibuja la bola 1
  fill(random(255), random(255), random(255));  
  ellipse(xpos1, ypos1, 50, 50);  
  
  // Dibuja la bola 2
  fill(random(255), random(255), random(255));  
  ellipse(xpos2, ypos2, 50, 50);  
  
  // Dibuja la bola 3
  fill(random(255), random(255), random(255));  
  ellipse(xpos3, ypos3, 50, 50);  
  
  // Dibuja la bola 4
  fill(random(255), random(255), random(255));  
  ellipse(xpos4, ypos4, 50, 50);  
  
  // Dibuja la bola 5
  fill(random(255), random(255), random(255));  
  ellipse(xpos5, ypos5, 50, 50);  
  
   // Dibuja la bola 6
  fill(random(255), random(255), random(255));  
  ellipse(xpos6, ypos6, 50, 50);  
}
