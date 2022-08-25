function distance(a,b)
    length(a) != length(b) && throw(ArgumentError("lengths do not match"))
    length([(a[i],b[i]) for i in 1:length(a) if a[i] != b[i]])
end