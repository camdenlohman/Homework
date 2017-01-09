public class Fridge{
  private String model_number;
  private int size;
  private Food[] storage;
  
  public Fridge(String model_number,int capacity){
    this.model_number = model_number;
    size = capacity;
    this.storage = new Food[size];
  }
  public String getModelNumber(){
    return this.model_number;
  }

  public void inToFridge(Food input){
    if(isStorageFull()) return;

    int position = foodCount();
    storage[position] = input;
  }

  public int foodCount(){
    int count = 0;
    for (Food food : storage) {
      if(food != null){
        count += 1;
      }
    }
    return count;
  }

  public boolean isStorageFull() {
    return foodCount() == storage.length;
  }

  public void empty(){
    // V1
    // this.belly = new Salmon[5];

    // V2
    for (int i = 0; i < storage.length; i++) {
      storage[i] = null;
    }
  }
}
