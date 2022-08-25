struct Rect_Prism{T <: Real}
    width::T
    length::T
    height::T
end

rect_prism = Rect_Prism(1,2,3)

function volume(x::Rect_Prism)
    x.width * x.length * x.height
end

volume(rect_prism)