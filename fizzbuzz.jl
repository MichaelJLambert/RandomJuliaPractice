function fizzbuzz(N)
    if N % 3 == 0 && N % 5 == 0
        println("fizzbuzz")
    elseif N % 3 == 0
        println("fizz")
    elseif N % 5 == 0
        println("buzz")
    else
        println(N)
    end
end
