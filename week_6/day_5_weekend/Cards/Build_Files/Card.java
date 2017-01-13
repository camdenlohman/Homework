
public class Card {

  String name = "test";
  String type = "test";
  int num = -5;

  public Card(String message){
    this.name = message;
  }

  public void setType(String type){
    this.type = type;
  }

  public void setNum(int num){
    this.num = num;
  }

  public String standardGetInfo(){
    return this.name + " of " + this.type;
  }

  public int standardGetNumber(){
    return this.num;
  }
}