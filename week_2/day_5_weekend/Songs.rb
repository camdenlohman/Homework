class Songs

  def initialize()
    @songs_list = []
  #Songs
  @songs_list.push(["Crazy Train",2,"Black Sabbath"])
  @songs_list.push(["Sand Man",2,"Metallica"])#
  @songs_list.push(["Ace of Spades",2,"Motorhead"])
  @songs_list.push(["Feel Good Inc.",1,"Gorillaz"])#
  @songs_list.push(["All Star",0,"Smash Mouth"])
  @songs_list.push(["Toxic",0,"Britney Spears"])#
  @songs_list.push(["Smooth Criminal",0,"Micheal Jackson"])
  @songs_list.push(["Jump Around",3,"House of Pain"])#
  @songs_list.push(["Real Slim Shady",3,"Eminem"])
  @songs_list.push(["Harder,Better,Faster,Stronger",4,"Daft Punk"])## 10
  @songs_list.push(["Flight of the Valkyries",5,"Wilhelm Richard Wagner"])
  @songs_list.push(["Ultimate Showdown (of ultimate destiny)",6,"Lemon Demon"])#
  @songs_list.push(["Cool guys don't look at explosions",6,"The Lonely Island"]) # 13
  
    #remove_instance_variable(:@use)
#these are private variables
end

def get_song_title(search)
  current = @songs_list.at(search)
  return current.at(0)
end

def get_genre(search)
  search2 = @songs_list.at(search)
  current = search2.at(1)


  if current == 0
    return "Pop"
  end
  if current == 1
    return "Punk"
  end
  if current == 2
    return "Metal"
  end
  if current == 3
    return "Rap"
  end
  if current == 4
    return "Party"
  end
  if current == 5
    return "Classical"
  end
  if current == 6
    return "Random Internet Stuff"
  end
end

def get_song(search)
return @songs_list.at(search)
end
end
