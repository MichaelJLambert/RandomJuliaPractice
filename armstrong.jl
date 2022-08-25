function isarmstrong(num)
    l = length(digits(num))
    sum(map(x -> x^l, digits(num))) == num
end