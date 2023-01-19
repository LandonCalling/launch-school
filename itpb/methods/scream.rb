def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee") # This won't print anything, becuase the return statement
                  # is before the puts statement.  Thus the puts statement
                  # never gets executed.