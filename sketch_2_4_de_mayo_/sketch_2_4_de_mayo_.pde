Table table;
int nSongs;
float[] danceability;
float[] Energy;

void setup() {
  size(1200, 800);

// Cargar datos
  table = loadTable("spotify.csv", "header");

  // Número de filas
  nSongs = table.getRowCount();

  // Iniciamos los arrays
  danceability = new float[nSongs];
  Energy = new float[nSongs];

  // Asignar datos
  for (int i = 0; i < nSongs; i++) {
    danceability[i] = table.getFloat(i, "Danceability");
    Energy[i] = table.getFloat(i, "Energy");
  }
  println("Primeros valores:");
  println("Danceability[0]: " + danceability[0]);
  println("Energy[0]: " + Energy[0]);

  println("Máximos:");
  println("Max Danceability: " + max(danceability));
  println("Max Energy: " + max(Energy));
}


void draw() {
 background(0);
  noLoop(); // para que dibuje una sola vez

  for (int i = 0; i < nSongs; i++) {
    float x = map(danceability[i], 0, 100, 0, width); // ahora usamos 0-100
    float y = map(Energy[i], 0, 100, height, 0);

  fill(random(100, 255), random(50, 150), random(100, 200));
    noStroke();
    ellipse(x, y, 10, 10);
  }
}
