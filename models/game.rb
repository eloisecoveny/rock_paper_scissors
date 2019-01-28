class RockPaperScissor

  def initialize(result1, result2)
    @result1 = result1
    @result2 = result2
  end

  def get_result()
    if @result1 == "rock"
      return "rock wins" if @result2 == "scissors"
      return "paper wins" if @result2 == "paper"
      return "it's a draw" if @result2 == "rock"
    elsif @result1 == "paper"
      return "paper wins" if @result2 == "rock"
      return "scissors win" if @result2 == "scissors"
      return "it's a draw" if @result2 == "paper"
    elsif @result1 == "scissors"
      return "scissors win" if @result2 == "paper"
      return "rock wins" if @result2 == "rock"
      return "it's a draw" if @result2 == "scissors"
    end
  end

  def who_won()
    if @result1 == "rock"
      return "player 1" if @result2 == "scissors"
      return "player 2" if @result2 == "paper"
      return "...noone ...darn it" if @result2 == "rock"
    elsif @result1 == "paper"
      return "player 1" if @result2 == "rock"
      return "player 2" if @result2 == "scissors"
      return "...noone ...darn it" if @result2 == "paper"
    elsif @result1 == "scissors"
      return "player 1" if @result2 == "paper"
      return "player 2" if @result2 == "rock"
      return "...err...noone..." if @result2 == "scissors"
    end
  end

end
