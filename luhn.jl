function luhn(num_str)

    !all(isspace(i) || isnumeric(i) for i in num_str) && return false

    num_str = [parse(Int, x) for x in num_str if isnumeric(x)]
    
    for i in (length(num_str)-1):-2:1
        num_str[i] * 2 > 9 ? num_str[i] = num_str[i] * 2 - 9 : num_str[i] = num_str[i] * 2
    end

    return sum(num_str) % 10 == 0
end

