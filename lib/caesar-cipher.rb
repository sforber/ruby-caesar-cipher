def createAlphabet()
    alphabet = ("a".."z").to_a
    character_hash = Hash.new
    i = 0
    until i == 26 do
        character_hash[alphabet[i]] = i
        i += 1
    end
    return character_hash
end

def caesarCipher(message, shift)
    character_hash = createAlphabet()
    encryptedMessage = []
    message.chomp!
    message = message.split("")
    for char in message
        if char != " "
            if char == char.upcase
                char.downcase!
                charShift = (character_hash[char] - shift) % 26
                charShift = character_hash.key(charShift)
                encryptedMessage.push(charShift.upcase)
            else
                charShift = (character_hash[char] - shift) % 26
                encryptedMessage.push(character_hash.key(charShift))
            end
        else
            encryptedMessage.push(char)            
        end
    end
    return encryptedMessage.join("")
end




