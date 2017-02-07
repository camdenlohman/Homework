import java.util.*;
import background.*;
import java.util.Random;

public class Main{

  static Random rand = new Random();


  static Game game = new Game("BlackJack");
  static ArrayList<Card> deck = game.getDeck();
  static ArrayList<Player> player_list;

  static int radnum = rand.nextInt(game.getDeck().size());

  static public int NewRand(){
    if (deck.isEmpty()){
      radnum = 0;
    } else {
      radnum = rand.nextInt(game.getDeck().size());
    }
    
    return radnum;
  }

  static public boolean NewRandP(Player player){
    
    boolean hit = false;

    radnum = rand.nextInt(21);
    
    if(radnum > player.getTotal()){
      hit = true;
    } else {
      player.setStop(true);
    }

    System.out.println(radnum);
    System.out.println(player.getTotal());

    return hit;
  }

  static public void CardTransfer_DToH(Player current_player){

    int num = NewRand();

    Card c_card = deck.get(num);

    current_player.intoHand(c_card);

    game.outOfDeck(num);

    deck = game.getDeck();
  }

  public static void main(String[] args) {

    Player p1 = new Player("P1");
    Player p2 = new Player("P2");

    for (int i = 0; i < game.deckSize(); i++ ) {
     //System.out.println(deck.get(i).standardGetInfo()); 
    }

    String answer3;
    String winner_message = "test";

    if (deck.isEmpty()){
      answer3 = "No more cards in the deck";
    } else {
      answer3 = deck.get(radnum).standardGetInfo();
    }

    System.out.println(deck.size());
    System.out.println(radnum);
    System.out.println(answer3);
    System.out.println(NewRand());
    System.out.println("");

    if(game.name == "Solitare"){

      CardTransfer_DToH(p1);
      CardTransfer_DToH(p2);

      if(p1.getHand().get(0).standardGetNumber() >= p2.getHand().get(0).standardGetNumber() ) {
        winner_message = "Player 1 Wins!";
      }

      if(p1.getHand().get(0).standardGetNumber() <= p2.getHand().get(0).standardGetNumber() ) {
        winner_message = "Player 2 Wins!";
      }

      if(p1.getHand().get(0).standardGetNumber() == p2.getHand().get(0).standardGetNumber() ) {
        winner_message = "It's a draw. :(";
      }

      System.out.println(winner_message);
    }

    if(game.name == "Simple BlackJack"){

      CardTransfer_DToH(p1);
      CardTransfer_DToH(p1);

      CardTransfer_DToH(p2);
      CardTransfer_DToH(p2);

      int p1_total = 0;
      int p2_total = 0;

      for (int i = 0; i < p1.getHand().size() ; i++ ) {
        p1_total += p1.getHand().get(i).standardGetNumber();
      }

      for (int i = 0; i < p2.getHand().size() ; i++ ) {
        p2_total += p2.getHand().get(i).standardGetNumber();
      }

      p1.setTotal(p1_total);
      p2.setTotal(p2_total);

      if(p1.getTotal() >= p2.getTotal() ) {
        winner_message = "Player 1 Wins Simple BlackJack!";
      }

      if(p1.getTotal() <= p2.getTotal()  ) {
        winner_message = "Player 2 Wins Simple BlackJack!";
      }

      if(p1.getTotal() == p2.getTotal()  ) {
        winner_message = "It's a draw. Simple BlackJack :(";
      }

      System.out.println("Player 1 total:" + p1_total);
      System.out.println("Player 2 total:" + p2_total);
      System.out.println(winner_message);
    }

    if(game.name == "BlackJack"){

      CardTransfer_DToH(p1);
      CardTransfer_DToH(p1);

      CardTransfer_DToH(p2);
      CardTransfer_DToH(p2);

      int p1_total = 0;
      int p2_total = 0;

      for (int i = 0; i < p1.getHand().size() ; i++ ) {
        p1_total += p1.getHand().get(i).standardGetNumber();
      }

      for (int i = 0; i < p2.getHand().size() ; i++ ) {
        p2_total += p2.getHand().get(i).standardGetNumber();
      }

      while(p1.getStop() == false){

        p1.setTotal(p1_total);

        System.out.println(p1.getName() + " make your choice.");
        System.out.println("Hit or Stay?");

         boolean hit = NewRandP(p1);

         if (hit == true){
          CardTransfer_DToH(p1);
          p1_total += p1.getHand().get(p1.getHand().size() - 1).standardGetNumber();
        }

      }

      while(p2.getStop() == false){

        p2.setTotal(p2_total);

        System.out.println(p2.getName() + " make your choice.");
        System.out.println("Hit or Stay?");

         boolean hit = NewRandP(p2);

         if (hit == true){
          CardTransfer_DToH(p2);
          p2_total += p2.getHand().get(p2.getHand().size() - 1).standardGetNumber();
        }

      }

      if(p1_total >= p2_total ) {
        winner_message = "Player 1 Wins BlackJack!";
      }

      if(p1_total <= p2_total ) {
        winner_message = "Player 2 Wins BlackJack!";
      }

      if(p1_total == p2_total ) {
        winner_message = "It's a draw. BlackJack :(";
      }

      System.out.println("Player 1 total:" + p1_total);
      System.out.println("Player 2 total:" + p2_total);
      System.out.println(winner_message);
    }

  }

}
