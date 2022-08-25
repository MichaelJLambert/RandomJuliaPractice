#=  this is new material for me on declaring types;
    such declarations involved in defining functions
    will often lead to improvements in performance;
    my guess is that this is because Julia has type
    inference; so if the type is given in the function
    Julia doesn't have to look it up.  =#

function area(height::Float64, width::Float64)
    return height * width
end

#=  can change value of constant as long as datatype
    is not changed =#

const MYCONST = 42