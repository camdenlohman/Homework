import static org.junit.Assert.assertEquals;
import org.junit.*;

public class ItemTest{

  Item item1;

  @Before
  public void before(){
    item1 = new Item("test",78965,12);
  }

  @Test
  public void hasName(){
    assertEquals("test",item1.getName());
  }

  @Test
  public void hasBarcode(){
    assertEquals(78965,item1.getBarcode());
  }

  @Test
  public void hasPrice(){
    assertEquals(12,item1.getPrice());
  }

}