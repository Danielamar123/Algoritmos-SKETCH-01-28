//se declaran los numeros que se van a sumar
//Definir n1 como Entero ← 1
//Definir n2 como Entero ← 4
//void setup() {
//  int n1 = 1;
//  int n2 = 4;
// se crea la variable para que r un numero entero que sea la respuesta entre n1 y n2
//  int r = n1 * n2;
//se imprime en la consola acompañado de texto para determinar que es
//  println("El resultado de la multiplicación es: " + r);
//}


//void setup() {
//// Se declaran los números que se van a multiplicar
////Definir n1 como Entero ← 1
////Definir n2 como Entero ← 11
//int n1 = 1;
//int n2 = 11;

//// se crea la variable para que r sea un numero entero y a la vez la respuesta entre n1 y n2
//int r = n1 * n2;

//// se crea el limitante de que solo si el nuemro es mayor a 10 se imprime 
//if (r > 10) {
//// imprimir (lo que sea)
//println("El resultado de la multiplicación es: " + r);
//  }
//}

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
}

void keyPressed() {
  stroke(random(255), random(255), random(255));
  if (key == 'h') {
    ellipse(20, 20, 20, 20);
  } 
  else if (key == 'o') {
    ellipse(40, 20, 20, 20);
  } 
  else if (key == 'l') {
    ellipse(60, 20, 20, 20);
  } 
  else if (key == 'a') {
    ellipse(80, 20, 20, 20);
  }
}
