function rotate(num, str)

    encryption = ""

    letters = [x for x in 'a':'z']

    for char in str
        if isletter(char)
            new_letter = letters[mod1(indexin(lowercase(char), letters)[1] + num, 26)]
            isuppercase(char) && (encryption = encryption * uppercase(new_letter))
            islowercase(char) && (encryption = encryption * new_letter)
        else
            encryption = encryption * char
        end
    end

    return encryption

end