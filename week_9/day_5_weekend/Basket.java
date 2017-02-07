import java.util.*;

public class Basket{


  ArrayList<Item> list = new ArrayList<Item>();
  
  public Basket(){
  }

  public void addToBasket(Item input){
    list.add(input);
  }

  public void removeFromBasket_Number(int input){
    list.remove(input);
  }

  public void clearBasket(){
    list.clear();
  }

  public ArrayList getList(){
    return this.list;
  }
}