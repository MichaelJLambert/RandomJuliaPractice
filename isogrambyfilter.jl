function isisogram(str)
    str |> s -> filter(isletter, lowercase(s)) |> allunique
end

#=  some explanation: |> is "piping" i.e. function application `x |> f' means "apply f to x"; chain function applications this way;
    filter(isletter, string) applies isletter function to each character in the given string and includes that character in a 
    new string if it is a letter; finally allunique is an in-built function that checks whether all the characters in a given
    string are unique!
=#