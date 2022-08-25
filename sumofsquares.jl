function square_of_sum(n)
    return sum(1:n)^2
end

function sum_of_squares(n)
    return Integer((n*((n+1)*(2n+1)))/6)
end

function difference(n)
    return square_of_sum(n) - sum_of_squares(n)
end