class Team

  def initialize(name,players,coach)
    @team_name = name
    @players = players
    @coach = coach
    @score = 0
    #instance variable / private variable
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def find_player(array,search)
    @players.include? (search)
  end

  def set_coach(change)
    @coach = change
    return @coach
  end

  def new_player(change)
    @players << change
  end

  def update_score(score)
    if score == "2"
      @score = "1"
    end
    if score == "1"
      @score = "2"
    else
      @score = "0"
    end
  end
end