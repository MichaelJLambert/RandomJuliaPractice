import Base: +, -, *, /, ^
import Base: numerator, denominator

struct RationalNumber <: Real
    num::Real
    den::Real
end

RationalNumber <: Real

zero = RationalNumber(0,1)
one = RationalNumber(1,1)

function reduce(r::RationalNumber)
    RationalNumber(numerator(r.num // r.den),denominator(r.num // r.den))
end

r = RationalNumber(4,6)
s = RationalNumber(6,8)

reduce(r)

function numerator(r::RationalNumber)
    RationalNumber(numerator(r.num // r.den),denominator(r.num // r.den)).num
end

function denominator(r::RationalNumber)
    RationalNumber(numerator(r.num // r.den),denominator(r.num // r.den)).den
end

numerator(RationalNumber(4,8))
denominator(RationalNumber(4,8))
numerator(RationalNumber(3, -9))

function +(r1::RationalNumber, r2::RationalNumber)
    reduce(RationalNumber(r1.num*r2.den + r2.num*r1.den, r1.den*r2.den))
end

RationalNumber(1,2) + RationalNumber(2,3)

RationalNumber(1, 2) + RationalNumber(2, 3) == RationalNumber(7, 6)

function -(r::RationalNumber)
    RationalNumber(-r.num, r.den)
end

function -(r1::RationalNumber, r2::RationalNumber)
    r1 + -r2
end

RationalNumber( 1, 2) - RationalNumber( 2, 3) == RationalNumber(-1, 6)

function *(r1::RationalNumber, r2::RationalNumber)
    reduce(RationalNumber(r1.num * r2.num, r1.den * r2.den))
end

function inverse(r::RationalNumber)
    RationalNumber(r.den,r.num)
end

function /(r1::RationalNumber, r2::RationalNumber)
    r1 * inverse(r2)
end

RationalNumber(-1, 2) * RationalNumber( 2, 3) == RationalNumber(-1, 3)
RationalNumber( 1, 2) / RationalNumber( 2, 3) == RationalNumber( 3, 4)

function ^(r::RationalNumber, n::Int64)
    reduce(RationalNumber(r.num^n, r.den^n))
end

RationalNumber(3, 5)^2 == RationalNumber(9, 25)

function av(x::Real)
    x >=0 ? x : -x
end

function abs(r::RationalNumber)
    reduce(RationalNumber(av(r.num),r.den))
end

abs(RationalNumber(-1, 2)) == RationalNumber(1, 2)