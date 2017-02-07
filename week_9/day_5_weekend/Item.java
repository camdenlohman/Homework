public class Item{
  
  String name;
  int barcode;
  int price;

  public Item(String name_input,int barcode_input,int price_input){
    this.name = name_input;
    this.barcode = barcode_input;
    this. price = price_input;
  }

  public String getName(){
    return this.name;
  }

  public int getBarcode(){
    return this.barcode;
  }

  public int getPrice(){
    return this.price;
  }
}