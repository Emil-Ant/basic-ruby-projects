# implement a method #substrings that takes a word as the first assignement and then an array of valid substrings (your dictionary)
# as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and
# how many times it was found

# have to use #match 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, array)
    word_split = word.split(" ")
    array.each do |dict_word|
        if dict_word.match(word)
            puts "The dictionary word is: #{dict_word} and it matches"
        else 
            puts "the dict word does not match"
        end
    end        
end


p substrings("below", dictionary)


