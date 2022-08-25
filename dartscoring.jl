function score(x, y)
    radius = sqrt(x^2 + y^2)
    if 5 < radius <= 10
        return 1
    elseif 1 < radius <= 5
        return 5
    elseif radius <= 1
        return 10
    else
        return 0
    end
end
