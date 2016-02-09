require_relative 'messages'
require_relative 'mastermind'

module CheckWinner

 include Messages

 def check_winner
  time_taken = Time.now - @time_start
  if @player_guess == @winning_sequence
    winner_messsage
  else
    correct_positions_and_elements(@winning_sequence, @player_guess)
  end
end

end
