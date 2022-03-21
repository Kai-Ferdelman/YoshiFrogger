class Car {
  PVector pos;
  float speed;
  boolean direction;
  PImage carImage;

  Car(PImage carImage, PVector pos) {
    this.carImage = carImage;
    this.pos = pos;
    speed = random(10, 30);
    direction = false;
    if (random(-1, 1) > 0) {
      direction = true;
    }
  }

  public void run() {
    display();
    update();
  }

  private void display() {
    if (direction) {
      pushMatrix();
      translate(pos.x, pos.y);
      scale(-1, 1);
      image(carImage, 0, 0);
      popMatrix();
    } else {
      image(carImage, pos.x, pos.y);
    }
  }

  private void update() {
    if (!direction) {
      pos.x += speed;
      if(pos.x > width+40){
        pos.x = - 40;
      }
    } else {
      pos.x -= speed;
      if(pos.x < - 40){
        pos.x = width+40;
      }
    }
  }
  
  public PVector getPos(){
    return pos;
  }
}