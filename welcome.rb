module Welcome

  def welcome
    answer = gets.chomp.downcase
     if answer == "p"
       start_game
     elsif answer == "i"
       puts "Mastermind will generate a secret sequence with:
(r)ed\n(g)reen\n(b)lue\n(y)ellow\nYou will guess the order of colors in the sequence\nWhat say you!?"
       welcome
     elsif answer == "q"
       puts ("See ya, Wimp!")
       exit
     else
       puts "Not a valid command. Try again"
       welcome
     end
   end

end
