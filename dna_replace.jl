function to_rna(dna)
    dna != "" && Set(split(dna,"")) ⊈ Set(["A", "C", "G", "T"]) && throw(ErrorException(dna))
    replace(dna, "A" => "U") |> 
        s -> replace(s,"T" => "A") |> 
        s -> replace(s,"C" => "X") |> 
        s -> replace(s,"G" => "C") |> 
        s -> replace(s,"X" => "G")
end