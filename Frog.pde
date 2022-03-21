class Frog {
  PVector pos;
  PImage  frogImage;

  Frog(PImage frogImage) {
    this.frogImage = frogImage;
    pos = new PVector(width/2, height-100);
  }

  public void run(Car[] cars) {
    display();
    update(cars);
  }

  private void display() {
    image(frogImage, pos.x, pos.y);
  }

  private void update(Car[] cars) {
    for (Car car : cars) {
      if (dist(pos.x, pos.y, car.pos.x, car.pos.y) < 40) {
        pos.x = width/2;
        pos.y = height-100;
        ui.win = false;
      }
    }
    if (pos.y < 200) {
      ui.win = true;
    }

    if (pos.x < - 40) {
      pos.x = width+40;
    }
    if (pos.x > width+40) {
      pos.x = - 40;
    }
  }

  public void move(char c) {
    switch(c) {
    case 'w': 
      pos.y -= 60;
      break;
    case 'a': 
      pos.x -= 60;
      break;
    case 's': 
      pos.y += 60;
      break;
    case 'd': 
      pos.x += 60;
      break;
    }
  }
}