public class Timer
{
  private int seconds;
  private int minutes;
  
  public Timer()
  {
    seconds = 0;
  }
  
  public void count(boolean hit)
  {
    if(!hit)
    {
      seconds++;
    }
  }
  
  public int getSecs()
  {
    return seconds;
  }
  
  public void display()
  {
    int temp = seconds;
    if(temp == 3600)
    {
      temp = 0;
      minutes++;
    }
    fill(255);
    textSize(20);
    text(minutes + ":" + temp, 20, 20);
  }
}
