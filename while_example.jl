#=

while condition w/counter
    block
end

=#

i=0

while i <= 10
    println(i)
    global i += 1 # nb: must use global here to reference global variable i declared above; this is a safety measure to prevent inadvertantly changing global variables
end
