import static org.junit.Assert.assertEquals;
import org.junit.*;

public class FridgeTest{
  Fridge fridge;
  Food food;
  boolean search;

  @Before 
  public void before() {
    fridge = new Fridge("FR1DG3", 20);
    food = new Food();
  }

  @Test
  public void hasModelNumber(){
    assertEquals("FR1DG3", fridge.getModelNumber()); 
  }

  @Test
  public void startsWithNoFood() {
    assertEquals(0, fridge.foodCount());
  }

  @Test
  public void canStore() {

    fridge.inToFridge(food);
    assertEquals(1, fridge.foodCount());
  }

  @Test
  public void canGetFull() {
    // for loop
    for (int i = 0; i < 25; i++ ) {
      if (fridge.isStorageFull() != true){
      fridge.inToFridge(food);
    }
    }

    //while loop
    /*
    while(i < 10) {
      bear.eat(salmon);
      i++;
    */

      assertEquals(20, fridge.foodCount());
  }

  @Test
  public void shouldEmptyFridge() {
    fridge.inToFridge(food);
    fridge.empty();
    assertEquals(0, fridge.foodCount());
  }

  @Test
  public void goneShopping() {
    Shopping shop = new Shopping();
    for (int i = 0; i < shop.Shopped(); i++) {
      fridge.inToFridge(food);
    }
    if (fridge.foodCount() > 0){
      search = true;
    }
    assertEquals(true,search);
    
  }
}
