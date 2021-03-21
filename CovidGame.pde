ArrayList <Covid> covidList = new ArrayList<Covid>();
Hero h = new Hero(1000 / 2, 1000 / 2, 3);
Covid c = new Covid((int)(Math.random() * 999), (int)(Math.random() * 999));
Timer t = new Timer();
boolean hit = false;
HitBox h1 = new HitBox(h);

public void settings()
{
  size(1000, 1000);
  covidList.add(c);
}
  
public void setup()
{
  background(0);
}
  
public void draw()
{
  background(0);
  h.draw();
  h1.draw(h);
  
  for(Covid co : covidList)
  {
    if(!hit)
    {
      co.draw();
      co.bounce();
      if(co.covidOnHero(h1))
      {
        co.gameOver(h);
        hit = true;
      }
    }
    if(hit)
    {
      textSize(26);
      text("GAME OVER", 470, 490);
    }
  }
  h.move();
  t.count(hit);
  t.display();
  int pos = (int)(Math.random() * 999) + 1;
  if(t.getSecs() % 900 == 0)
  {
    covidList.add(new Covid(pos, pos));
  }
}
