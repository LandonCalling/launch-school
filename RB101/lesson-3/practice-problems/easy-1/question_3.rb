advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split
advice = advice.map { |word| word == "important" ? 'urgent' : word }
advice = advice.join(' ')

puts advice