mutable struct Person
    name::String
    age::Float64
    isActive
    #=overrides the default constructor: =#
    function Person(name, age)
        new(name, age, true)
    end
end