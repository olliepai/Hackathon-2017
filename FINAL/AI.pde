class AI {
  int aX;
  int aY;
  PImage ai;
  boolean visible = true; 
  float speedMultiplier = 1.1;
  float distanceX = 300;
  int v = 5;
  int x;
  int y;

  public AI(int xpos, int ypos) {
    aX = xpos;
    aY = ypos;
    ypos = aY;

    x = aX;
    y = aY;

  }

  void graphics() {
    ai = loadImage("Monsters.png");
    ai.resize(80, 60);
    image(ai, aX, aY);  
  }
  
  void horizontalMotion() {
    aX += v * speedMultiplier;
      if (Math.abs(x-aX) > distanceX) {
        v *= -1;
      }
  }
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>aX + 10 && paul.xPos < aX+70 && paul.yPos+90 > aY + 10 && paul.yPos < aY+50) {
        paul.health -= 1;
      }
      // pusedocode; if paul has ability enabled and touches an AI
      // set visible to false
    }
  }
}