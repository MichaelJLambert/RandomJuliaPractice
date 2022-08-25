function isisogram(s)
    maximum([count(x, lowercase(s)) for x in lowercase(s) if isletter(x) == true]) > 1 ? false : true
end