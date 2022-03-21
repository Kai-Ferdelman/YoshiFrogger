class UI{
  PImage road;
  boolean win = false;
  
  UI(PImage road){
    this.road = road;
    this.road.resize(width, 60);
  }
  
  public void run(){
    fill(0);
    textSize(30);
    int time = (millis()/1000);
    text("Vergangene Zeit: "+time, width-300, 30);
    
    for(int i = 0; i < NUMOFCARS; i++){
      image(road, width/2, 200+i*60);
    }
    
    if(win){
      textSize(200);
      fill(#DECE1F);
      text("You won!", width/2-400, height/2);
    }
  }
}