
char_array = [x for x in 'a':'z']
cipher = Dict(char_array[i+1] => char_array[26-i] for i in 0:25)

function encode(input)
    map(x -> cipher[x], input)
end

function decode(input)
    map(x -> cipher[x], input)
end
