# implement a method #substrings that takes a word as the first assignement and then an array of valid substrings (your dictionary)
# as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and
# how many times it was found


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
    word_hash = {}
    string = string.downcase
    dictionary.each do |dict_word|
        #if the word is found in string argument, use .scan method to count the number of occurences of that word 
        word_hash[dict_word] = string.scan(dict_word).size if string.include?(dict_word)
    end 
    word_hash

end


substrings("Howdy partner, sit down! How's it going?", dictionary)


#note to self: 
# The string.scan(dict_word).size line of code is checking the number of times that the substring dict_word occurs in the string and returning the size or count of those occurrences.

# The string.scan(dict_word) method scans the string for all occurrences of the substring dict_word and returns an array of all matches.

# For example, if string = "hello world" and dict_word = "o", string.scan(dict_word) would return ["o", "o"].

# The .size method is then called on the result of string.scan(dict_word) to determine the number of elements in the array, which is equivalent to the number of times the substring was found in the string. So, in this example string.scan(dict_word).size would return 2.