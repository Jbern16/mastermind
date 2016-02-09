module Messages

  def welcome_message
    puts "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions or (q)uit?"
  end

  def start_game_message
    puts "I have generated a sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"
  end

  def feedback
    puts "You have #{@correct_elements} elements in #{@score} correct positions
You've taken #{@guesses} guess. Go again!"
  end

  def winner_message(time_taken)
    puts "You Win! You guessed the winning sequence #{@winning_sequence.join.upcase}
You finished in #{@guesses} guesses in #{time_taken} seconds"
  end
  
end
