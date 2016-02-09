module ValidateInput

 VALID_COLORS = ["r", "b", "g", "y"]

 def validate_input
  input = gets.chomp.downcase
   if input.split('').all?{ |color| VALID_COLORS.include?(color)} && input.length == 4
      @player_guess = input.chars
      @guesses +=1
      check_winner
   elsif input == 'q'
     puts ("See ya, Wimp!")
     exit
   elsif input == 'c'
     p @winning_sequence.join
     validate_input
   elsif input.length < 4
     puts "That is too short!"
     validate_input
   elsif input.length > 4
     puts "That is too big!"
     validate_input
   else
     puts "Not a valid command. Try again"
     validate_input
   end
 end

end
