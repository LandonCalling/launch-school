# Pick out the minimum age from our current Munster family hash below.

ages = { "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237 
}

minimum = ages.min { |person_1, person_2| person_1[1] <=> person_2[1] }

p minimum

p ages.values.min