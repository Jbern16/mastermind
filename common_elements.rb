module CommonElements

  def number_of_common_elements(sequence, guess)
    sequence_hash = Hash.new(0)
    sequence.each {|v| sequence_hash[v] +=1}

    guess_hash = Hash.new(0)
    guess.each {|v| guess_hash[v] +=1}

    common_values = []
    sequence_hash.each_key do |key|
         if (guess_hash[key] <=> sequence_hash[key]) == -1
           common_values << guess_hash[key]
         elsif (guess_hash[key] <=> sequence_hash[key]) == 0
           common_values << guess_hash[key]
         elsif (guess_hash[key] <=> sequence_hash[key]) == 1
           common_values << sequence_hash[key]
         end
        end
    common_values.reduce(:+)
    end
end
