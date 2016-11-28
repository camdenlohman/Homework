require('minitest/autorun')
require_relative('team')

class TeamSpec < MiniTest::Test

  def test_get_team_name
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal("team", team1.get_team_name)
  end

  def test_get_players
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal(["player1","player2","player3","player4"], team1.get_players)
  end

  def test_get_coach
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal("coach", team1.get_coach)
  end

  def test_set_coach
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal("other coach", team1.set_coach("other coach"))
  end

  def test_new_player
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal(["player1","player2","player3","player4","player5"], team1.new_player("player5"))
  end

  def test_find_player
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal(true, team1.find_player(team1,"player4"))
  end

  def test_update_score
    team1 = Team.new("team",["player1","player2","player3","player4"],"coach")
    assert_equal("2", team1.update_score("1"))
    # 2 = draw +1 point, 1 = win +2 points, 0 = Lost +0 points
  end

end