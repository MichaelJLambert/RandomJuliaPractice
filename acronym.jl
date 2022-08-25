function acronym(phrase)
    phrase = map(x -> ispunct(x) || x == '\'' ? x : " ", phrase)
    join(map(x -> uppercase(first(x,1)), split(phrase, " ")))
end