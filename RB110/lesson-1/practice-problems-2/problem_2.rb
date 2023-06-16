# Add up all the ages from the Munster family hash below.

ages = { "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237 
}

total_years = 0

ages.each_value { |age| total_years += age }

p total_years