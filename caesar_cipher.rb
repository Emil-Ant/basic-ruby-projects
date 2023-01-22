def caesar_cipher(string, shift)
    # convert string to array of characters
    characters = string.chars
    # iterate through array and shift characters
    shifted_chars = characters.map do |char|
        if char == " "
            char
        elsif char.ord.between?(65, 90)
            shifted_ascii = (char.ord - 65 + shift) % 26 + 65
            shifted_ascii.chr
        elsif char.ord.between?(97, 122)
            shifted_ascii = (char.ord - 97 + shift) % 26 + 97
            shifted_ascii.chr
        else
            char
        end
    end
    shifted_chars.join("")
end


p caesar_cipher("What a string!", 5)