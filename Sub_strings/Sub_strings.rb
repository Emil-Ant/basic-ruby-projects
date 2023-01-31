# implement a method #substrings that takes a word as the first assignement and then an array of valid substrings (your dictionary)
# as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and
# how many times it was found

# have to use #match 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
    word_array = []
    dictionary.each do |dict_word|
        if word.downcase.include?(dict_word.downcase)
            word_array.push(dict_word)
        end
    end 
    p word_array       
end


# p substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
