function to_rna(c::Char)
    c == 'C' && return 'G' 
    c == 'G' && return 'C' 
    c == 'T' && return 'A' 
    c == 'A' && return 'U'
    throw(ErrorException("Unknown nucleotide: $c"))
end

function to_rna(dna::AbstractString)  
    map(to_rna, dna)
end

#= nb: map views dna as an iterable and applies to_rna to each of its elements. =#
