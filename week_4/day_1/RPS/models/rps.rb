class Rps

  def initialize(pla1, pla2)
    @mov1 = pla1
    @mov2 = pla2
  end

  def play
    if @mov1 == "Paper" && @mov2 == "Rock"
      return "Player 1 Wins!!!!"
    end

    if @mov1 == "Scissors" && @mov2 == "Paper"
      return "Player 1 Wins!!!!"
    end

    if @mov1 == "Rock" && @mov2 == "Scissors"
      return "Player 1 Wins!!!!"
    end

    if @mov1 == "Rock" && @mov2 == "Paper"
      return "Player 2 Wins!!!!"
    end

    if @mov1 == "Paper" && @mov2 == "Scissors"
      return "Player 2 Wins!!!!"
    end

    if @mov1 == "Scissors" && @mov2 == "Rock"
      return "Player 2 Wins!!!!"
    end

    if @mov1 == @mov2
      return "It's a draw."
    end
  end

  

end