function bob(stimulus)
    
    endswith(stimulus, "?") && filter(isletter, stimulus) != "" && all(isuppercase, filter(isletter,stimulus)) && return "Calm down, I know what I'm doing!"

    all(isspace, stimulus) && return "Fine. Be that way!"

    endswith(filter(!isspace, stimulus), "?") && return "Sure."
    
    filter(isletter, stimulus) != "" && all(isuppercase, filter(isletter,stimulus)) && return "Whoa, chill out!" 

    return "Whatever."
    
end