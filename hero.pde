public class Hero
{
  private int posX;
  private int posY;
  private float speed;
  
  public Hero(int x, int y, float s)
  {
    posX = x;
    posY = y;
    speed = s;
  }
  
  public void draw()
  {
    fill(255);
    ellipse(posX, posY, 30, 30);
    rect(posX - 15, posY + 15, 30, 50);
  }
  
  public void move()
  {
    if(keyPressed)
    {
      if(key == CODED)
      {
        if(keyCode == LEFT)
        {
          posX -= speed;
        }
        if(keyCode == RIGHT)
        {
          posX += speed;
        }
      }
      if(key == CODED)
      {
        if(keyCode == UP)
        {
          posY -= speed;
        }
        if(keyCode == DOWN)
        {
          posY += speed;
        }
      }
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
  public void setSpeed(int s)
  {
    speed = s;
  }
}
