function allergic_to(score, allergen) 
    d = Dict("eggs" => 1, "peanuts" => 2, "shellfish" => 4, 
        "strawberries" => 8, "tomatoes" => 16, "chocolate" => 32,
        "pollen" => 64, "cats" => 128)
    return d["$allergen"] == score || score != 0
end

function allergy_list(score)

end