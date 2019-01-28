require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game")

class TestRockPaperScissor < MiniTest::Test

  def setup
    @game1 = RockPaperScissor.new("rock", "scissors")
    @game2 = RockPaperScissor.new("paper", "rock")
    @game3 = RockPaperScissor.new("scissors", "scissors")
  end

  def test_get_result
    assert_equal("rock wins", @game1.get_result())
    assert_equal("paper wins", @game2.get_result())
    assert_equal("it's a draw", @game3.get_result())
  end


end
