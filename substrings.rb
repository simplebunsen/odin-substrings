require "pry"

def substrings(input_string, dictionary)
  word_array = input_string.split(" ")

  #downcase the whole dictionary and the input
  dictionary.map! {|word| word.downcase}
  word_array.map! {|word| word.downcase}

  result_word_hash = Hash.new(0)

  #this is a very verbose way of checking those after looking at other solutions. Coulda used include?, select to make one liner
  word_array.each do |word|

    start_index = 0
    end_index = 0
    while(start_index < word.length) do 

      while(end_index < word.length) do
        current_substring = word[start_index..end_index]

        end_index += 1

        next if current_substring.empty?

        if dictionary.include?(current_substring) 
          result_word_hash[current_substring.to_sym] += 1
        end
      end

      end_index = 1
      start_index += 1

    end

  end

  return result_word_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)