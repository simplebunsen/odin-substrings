require "pry"

def substrings(string, dictionary)
  word_array = string.split(" ")

  #downcase the whole dictionary and the input
  dictionary.map! {|word| word.downcase}
  word_array.map! {|word| word.downcase}

  result_word_hash = Hash.new(0)

  word_array.each do |word|

    start_index = 0
    end_index = 1
    while(start_index < word.length) do 

      while(end_index < word.length) do
        #TODO skip if start > end
        current_substring = word[start_index, end_index]
        puts "evaluation substring #{current_substring} at index #{start_index},#{end_index}"

        if dictionary.include?(current_substring) 
          result_word_hash[current_substring.to_sym] += 1
        end
      end_index += 1
      end

      end_index = 1
      start_index += 1

    end

  end

  return result_word_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)