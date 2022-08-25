#=

if condition
    block
elseif condition
    block
else 
    block
end

=#

function compare(x,y)
    x < y ? println("$x is less than $y") : x > y ? println("$x is greater than $y") : println("$x and $y are equal")
end