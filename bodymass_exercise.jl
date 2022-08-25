struct Person
    name::String
    weight::Int64
    height::Float64
end

Arthur = Person("Arthur", 75, 1.8)

Arthur.name
Arthur.weight
Arthur.height

function bmi_calculate(person::Person)
    round(person.weight / person.height^2, digits=2)
end

function bmi_report(person::Person)
    println("Hello $(person.name). You are $(person.weight) kg and 
            $(person.height) m. Your BMI is $(bmi_calculate(person)).")
end

bmi_report(Arthur)
