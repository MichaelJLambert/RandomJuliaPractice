function count_nucleotides(strand)
    for x in strand
        if x ∉ ['A', 'C', 'G', 'T']
            throw(DomainError(x))
        end
    end
    return Dict(char => count(char, strand) for char in "ACGT")         
end 