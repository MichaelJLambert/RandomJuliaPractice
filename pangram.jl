function ispangram(input)
    if [string(x) for x in 'a':'z'] ⊆ split(lowercase(input),"")
        return true
    else
        return false
    end
end