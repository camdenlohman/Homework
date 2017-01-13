import java.util.*;
import background.*;

public class Game{

  String name;
  Card card;
  private ArrayList<Card> deck;

  // ask for the game the player wants to play, set it up from here VVVV

  public Game(String name){
    this.name = name;
    this.deck = new ArrayList<Card>();

    if(this.name == "Solitare"){

      int i = 0;
      int div = 0;
      for(int j = 0;deck.size() < 52; j++){
        i = i + 1;

        if (i == 1){
          card = new Card("Ace");
        }
        if (i == 2){
          card = new Card("2");
        }
        if (i == 3){
          card = new Card("3");
        }
        if (i == 4){
          card = new Card("4");
        }
        if (i == 5){
          card = new Card("5");
        }
        if (i == 6){
          card = new Card("6");
        }
        if (i == 7){
          card = new Card("7");
        }
        if (i == 8){
          card = new Card("8");
        }
        if (i == 9){
          card = new Card("9");
        }
        if (i == 10){
          card = new Card("10");
        }
        if (i == 11){
          card = new Card("Jack");
        }
        if (i == 12){
          card = new Card("Queen");
        }
        if (i == 13){
          card = new Card("King");
        }
        
        if (div == 0){
          card.setType("Diamond");
        }

        if (div == 1){
          card.setType("Hearts");
        }

        if (div == 2){
          card.setType("Clubs");
        }

        if (div == 3){
          card.setType("Spades");
        }
        if (i == 13){
          div += 1;
          i = 0;
        }

        card.setNum(i);

        deck.add(card);
      }
    }

    if(this.name == "Simple BlackJack"){

      int i = 0;
      int div = 0;
      int card_num = 0;
      for(int j = 0;deck.size() < 52; j++){
        
        i = i + 1;
        card_num = i;

        if (i == 1){
          card = new Card("Ace");
        }
        if (i == 2){
          card = new Card("2");
        }
        if (i == 3){
          card = new Card("3");
        }
        if (i == 4){
          card = new Card("4");
        }
        if (i == 5){
          card = new Card("5");
        }
        if (i == 6){
          card = new Card("6");
        }
        if (i == 7){
          card = new Card("7");
        }
        if (i == 8){
          card = new Card("8");
        }
        if (i == 9){
          card = new Card("9");
        }
        if (i == 10){
          card = new Card("10");
        }
        if (i == 11){
          card = new Card("Jack");
        }
        if (i == 12){
          card = new Card("Queen");
        }
        if (i == 13){
          card = new Card("King");
        }
        
        if (div == 0){
          card.setType("Diamond");
        }

        if (div == 1){
          card.setType("Hearts");
        }

        if (div == 2){
          card.setType("Clubs");
        }

        if (div == 3){
          card.setType("Spades");
        }
        if (i == 13){
          div += 1;
          i = 0;
        }

        if(card_num > 10){
          card_num = 10;
        }

        card.setNum(card_num);

        deck.add(card);
      }
    }

    if(this.name == "BlackJack"){

      int i = 0;
      int div = 0;
      int card_num = 0;
      for(int j = 0;deck.size() < 52; j++){
        
        i = i + 1;
        card_num = i;

        if (i == 1){
          card = new Card("Ace");
        }
        if (i == 2){
          card = new Card("2");
        }
        if (i == 3){
          card = new Card("3");
        }
        if (i == 4){
          card = new Card("4");
        }
        if (i == 5){
          card = new Card("5");
        }
        if (i == 6){
          card = new Card("6");
        }
        if (i == 7){
          card = new Card("7");
        }
        if (i == 8){
          card = new Card("8");
        }
        if (i == 9){
          card = new Card("9");
        }
        if (i == 10){
          card = new Card("10");
        }
        if (i == 11){
          card = new Card("Jack");
        }
        if (i == 12){
          card = new Card("Queen");
        }
        if (i == 13){
          card = new Card("King");
        }
        
        if (div == 0){
          card.setType("Diamond");
        }

        if (div == 1){
          card.setType("Hearts");
        }

        if (div == 2){
          card.setType("Clubs");
        }

        if (div == 3){
          card.setType("Spades");
        }
        if (i == 13){
          div += 1;
          i = 0;
        }

        if(card_num > 10){
          card_num = 10;
        }

        card.setNum(card_num);

        deck.add(card);
      }
    }

  }

  public String getName(){
    return this.name;
  }

  public int deckSize(){
    return deck.size();
  }

  public void intoDeck(Card card_input){
    deck.add(card_input);
  }

  public void outOfDeck(int input){
    deck.remove(input);
  }

  public void clear(){
    deck.clear();
  }

  public ArrayList<Card> getDeck(){
    return deck;
  }

}