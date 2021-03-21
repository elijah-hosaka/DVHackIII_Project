public class HitBox
{
  private int posX;
  private int posY;
  private int len;
  private int wid;
  
  public HitBox(Hero h)
  {
    len = 30;
    wid = 80;
    posX = h.getX();
    posY = h.getY();
  }
  
  public void draw(Hero h)
  {
    posX = h.getX();
    posY = h.getY();
  }
  
  public int getX()
  {
    return posX;
  }
  
  public int getY()
  {
    return posY;
  }
  
  public int getLen()
  {
    return len;
  }
  
  public int getWid()
  {
    return wid;
  }
}
