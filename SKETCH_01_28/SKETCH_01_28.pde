//Ejemplos

// Escribir cosas en la consola
//print("hola mundo");

// Para crear nuestro lienzo
//size(500,800);

// darle color al fondo del lienzo
//background(0);

// Dibujar una linea
//Line (0,0,200,200)

//EJERCICIO 1 

//print("hola mundo");
//size(800,800);
//background(60,160,240);
//stroke(255);
//strokeWeight(40);
//line(500,200,50,200);

//EJERCICIO 2

//Variable tipo bool 
//boolean z = true;
//char h = 'h';
//string hola = "hola";
//float horas = 3.5;
//int distancia = 10;

//color RedColor = color(200,10,10)

// Se ejecuta 1 sola vez apenas inicia
void setup() {
  size(500,500);
}

// Se ejecuta una vez por fotograma
void draw() {
  background(50,250,100);
  
//Translate(0,0); es para mover todo a un punto especifico (como si ese punto fuera 0)
  translate (250,270);
  
  fill(#14D839);
  ellipse(0,50,150,40);
  
  //Cuerpo
  ellipse(0,0,100,100);
  
  //Manos
 ellipse(-50,25,30,50);
 ellipse(50,25,30,50);
 
 //Ojos
 fill(255);
 ellipse(-30,-40,50,50);
 ellipse(30,-40,50,50);
 
 fill(0);
 ellipse(-30,-40,30,30);
 ellipse(30,-40,30,30);
 
 //Boca
 
 //rectMode(CENTER); para poner algo en el centro 
 rectMode(CENTER);
 fill(255,0,0);
 rect(0,10,60,10);
 
 //Contenedor
 fill(#72CAF5,100);
 ellipse(0,-10,195,195);
 
 //Gotas en la frente
 //noStroke(); quitar las margenes
 noStroke();
 triangle(50,-80,65,-65,45,-75);
  triangle(50,-70,65,-55,45,-65);
  
 
 
 
}
