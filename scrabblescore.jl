function score(str)
    wordscore = 0
    for x in str
        if x in "AEIOULNRST"
            wordscore += 1
        elseif x in "DG" 
            wordscore += 2
        elseif x in "BCMP" 
            wordscore += 3
        elseif x in "FHVWY" 
            wordscore += 4
        elseif x in "K" 
            wordscore += 5
        elseif x in "JX" 
            wordscore += 8
        elseif x in "QZ" 
            wordscore += 10
        end
    end
    return wordscore
end