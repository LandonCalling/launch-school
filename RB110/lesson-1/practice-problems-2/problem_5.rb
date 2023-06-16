# In the array below, find the index of the fisrt name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

name = flintstones.index {|person| person[0,2] == "Be" }

p name