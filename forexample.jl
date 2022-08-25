#=

for i in 1:12
    println(i)
end

=#

my_dict = Dict("a" => "eat", "b" => "sleep", "c" => "lift")

for (x,y) in my_dict
    println("I like to $y")
end
