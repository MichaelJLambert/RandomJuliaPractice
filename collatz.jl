function collatz_steps(n)
    n < 1 && throw(DomainError(""))
    num_steps = 0
    while n != 1
        iseven(n) ? n = Int(n/2) : n = 3n + 1
        num_steps += 1
    end
    return num_steps
end

#= This function takes an integer, divides by 2 if even or multiplies by 3 and adds 1 if odd; returns number of steps to reach 1 =#