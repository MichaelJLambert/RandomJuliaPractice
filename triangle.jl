function is_valid(t)
    x,y,z = t[1],t[2],t[3]
    x != 0 && y != 0 && z != 0 && x <= y + z && y <= x + z && z <= x + y
end

function is_equilateral(t)
    x,y,z = t[1],t[2],t[3]
    is_valid(t) && x != 0 && y != 0 && z != 0 && x == y && x == z
end

function is_isosceles(t)
    x,y,z = t[1],t[2],t[3]
    is_valid(t) && (x == y || x == z || y == z)
end

function is_scalene(t)
    x,y,z = t[1],t[2],t[3]
    is_valid(t) && !is_equilateral(t) && !is_isosceles(t) 
end
