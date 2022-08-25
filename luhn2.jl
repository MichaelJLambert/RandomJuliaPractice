function luhn(number)
    prod(n) = 2n > 9 ? 2n - 9 : 2n

    number = parse.(Int, collect(number))

    for i in length(number)-1:-2:1 number[i] = prod(number[i]) end

    sum(number) % 10 == 0

end