function prime_factors(num)
    factors = []
    for x in 2:Int(ceil(sqrt(num)))  
        while num % x == 0
            push!(factors, x)
            num = Int(num / x)
            num == 1 && return factors
        end
    end
    num > 1 && push!(factors, num)
    return factors 
end