require_relative 'common_elements'
require_relative 'validate_input'
require_relative 'welcome'
require_relative 'messages'

class Mastermind

  include ValidateInput
  include Welcome
  include Messages
  include CommonElements

  def initialize
    welcome_message
    @guesses = 0
  end


  def start_game
    start_game_message
    @winning_sequence = (0..3).map {|num| ["r", "b", "g", "y"].sample}
    @time_start = Time.now
    validate_input
  end

  def check_winner
    time_taken = Time.now - @time_start
    if @player_guess == @winning_sequence
      winner_message(time_taken)
    else
      correct_positions_and_elements(@winning_sequence, @player_guess)
    end
  end

  def correct_positions_and_elements(winning_sequence, player_guess)
    index = 0
    score = 0
    4.times do |element|
     if winning_sequence[index] == player_guess[index]
       score += 1
     end
     index += 1
    end
    @score = score
    @correct_elements = number_of_common_elements(winning_sequence, player_guess)
    feedback
    validate_input
  end

end

Mastermind.new.welcome
