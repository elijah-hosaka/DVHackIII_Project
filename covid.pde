public class Covid
{
  private int posX;
  private int posY;
  private int speedX;
  private int speedY;
  private float radius;
  
  public Covid(int x, int y)
  {
    posX = x;
    posY = y;
    speedX = (int)(Math.random() * 5) + 1;
    speedY = (int)(Math.random() * 5) + 1;
    radius = 70 / 2;
  }
  
  public void draw()
  {
    fill(100);
    ellipse(posX, posY, 70, 70);
    fill(150, 0, 0);
    for(int i = 0; i < 7; i++)
    {
      ellipse(posX + (int)(Math.random() * 70) - 35, posY + (int)(Math.random() * 70) - 35, 20, 20);
    }
  }
  
  public void bounce()
  {
    posX += speedX;
    posY += speedY;
    if(posX > width - radius || posX < 0 + radius)
    {
      speedX = -speedX;
    }
    if(posY > height - radius || posY < 0 + radius)
    {
      speedY = -speedY;
    }
  }
  
  public int getX()
  {
    return posX;
  }
  
  public int getY()
  {
    return posY;
  }
  
  public boolean covidOnHero(HitBox h)
  {
    return posX > h.getX() - radius && posX < h.getX() + h.getLen() + radius && posY > h.getY() - radius && posY < h.getY() + h.getWid() + radius;
  }
  
  public void gameOver(Hero h)
  {
    speedX = 0;
    speedY = 0;
    h.setSpeed(0);
    
  }
}
