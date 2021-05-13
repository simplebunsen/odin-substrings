def substrings(string, dictionary)
  word_array = string.split(" ")
  





  #TODO: actually input all substrings and not just the whole words here

  word_hash = Hash.new(0)

  word_array.each do |word|

    start_index = 0
    end_index = 1
    while(start_index < word.length) do 

      while(end_index < word.length) do
        current_substring = word[start_index, end_index]


        if dictionary.include?(current_substring) 
          word_hash[current_substring.to_sym] += 1
        end

      end

      end_index = 1
      start_index += 1

    end

  end

end