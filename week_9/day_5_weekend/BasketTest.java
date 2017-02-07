import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BasketTest {

  Basket basket1;

  @Before
  public void before(){
    basket1 = new Basket();
  }

  @Test
  public void canAdd(){
    Item item1 = new Item("test1",2304,12);
    basket1.addToBasket(item1);
    int result = basket1.getList().size();
    assertEquals(1,result);
  }

  @Test
  public void canRemove(){
    Item item1 = new Item("test1",2304,12);
    basket1.addToBasket(item1);
    basket1.removeFromBasket_Number(0);
    int result = basket1.getList().size();
    assertEquals(0,result);
  }

  @Test
  public void canClear(){
    Item item1 = new Item("test1",2304,32);
    Item item2 = new Item("test2",2045,62);
    Item item3 = new Item("test3",3462,15);
    basket1.addToBasket(item1);
    basket1.addToBasket(item2);
    basket1.addToBasket(item3);
    basket1.clearBasket();
    int result = basket1.getList().size();
    assertEquals(0,result);
  }

}