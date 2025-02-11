////void setup(){
////size(800, 800);
////background(0);
////noStroke();
////}

////void draw () {
////  for (int x=50; x< width; x=x+50) {
////    for (int y=50; y<height; y=y+50) {
////      for (int i=0; i<100; i=i+4) {
////        fill(random(255), random(255), random(255));
////        ellipse(x, y, 20, 20);
////      }
////    }
////  }
////}

////for(int x=50; x< width; x=x+50){
////  for(int y=50; y<height; y=y+50){
////  //printIn(y);
////  ellipse(x,y,20,20);
////  }
////}

//  //int x =50;
//  //int y =50;
//  //while(x<width){
    
//  //  while (y< height){
//  //    ellipse(x,y,20,20);
//  //    y=y+50;
//  //  }
//  //  x=x+50;
//  //}
  
//  // Para iniciar un arreglo
//  float[] xPositions;
  
//  void setup(){
//size(800, 800);
//background(0);
//noStroke();

//// se debe definir primero el tamaño del arreglo
//xPositions=new float[10];


////iniciar los valores del arreglo 

// for(int i=0;i< xPositions.length;i=i+1){
// xPositions[i]= random(0,width);
//  println(xPositions[i]);
//  }
// }
//void draw (){
//  for(int i=0; i< xPositions.length;i=i+1){
//    ellipse(xPositions[i],20,50,50);
//  }
// }
 
// // and &&
// //or ||
 
 
 float xpos;
 float ypos;
 
 float xSpeed= 2.0;
 float ySpeed= 3.0;
 
int  xdirection=1;
int ydirection=1;
 
 void setup (){
   size(800,800);
   noStroke();
   frameRate (200);
   
   //iniciar la burbuja en la mitad de la pantalla
   xpos= width/2;
   ypos= height/2;
 }
 
 void draw (){
   background(0);
   
   xpos = xpos + (xSpeed*xdirection);
   //ypos = ypos + (ySpeed*ydirection);
   
   if(xpos>width||xpos==0){
  xdirection=xdirection*-1;
   } 
   
 if(ypos>height||ypos<0){
  ydirection = ydirection*-1;
 } 
   
   ellipse(xpos, ypos, 50, 50);
 }
