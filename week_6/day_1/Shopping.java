import java.util.Random;

class Shopping {

  public static int Shopped(){
    Random rand = new Random();

    int radnum = rand.nextInt(7);
    return radnum;
  }
}