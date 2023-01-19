def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee") # Since puts is the last line of the method scream
                  # will return nil because puts returns a value of nil.