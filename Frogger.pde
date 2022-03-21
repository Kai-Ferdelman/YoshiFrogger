Car cars[];
Frog frog;
UI ui;
int NUMOFCARS = 10;

void setup(){
  
  fullScreen();
  frameRate(30);
  imageMode(CENTER);
  PImage carImage = loadImage("car1.png");
  carImage.resize(80,45);
  cars = new Car[NUMOFCARS];
  for(int i = 0; i < NUMOFCARS; i++){
    cars[i] = new Car(carImage, new PVector(width/2,200+i*60));
  }
  
  PImage yoshi = loadImage("yoshi.png");
  yoshi.resize(50, 50);
  frog = new Frog(yoshi);
  
  PImage road = loadImage("road.jpg");
  ui = new UI(road);
  
}

void draw(){
  background(255);
  ui.run();
  for(Car car : cars){
    car.run();
  }
  frog.run(cars);
}

void keyReleased(){
  frog.move(key);
}