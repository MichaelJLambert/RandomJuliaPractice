struct NumRectangle{T <: Real}
    width::T
    height::T
end

#=  This rectangle struct says that the two attributes of any instance
    namely width and height should be of some user-specified type that
    can be anything as long as it is a subtype of Real =#

rectangle1 = NumRectangle(1,2)

rectangle2 = NumRectangle(1.2,2.3)

rectangle3 = NumRectangle(π,π)

#=  Notice that Julia is able to infer which T is meant when the objects are
    constructed. =#

NumRectangle{Integer} <: NumRectangle

NumRectangle{Float64} <: NumRectangle