# Snippet 1 # FALSE because '4' and 4 are different types
'4' == 4 ? puts('TRUE') : puts('FALSE')

# $nippet 2 # 'Did you get it right?' because both expressions
            # in the conditional evaluate to 3
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts 'Did you get it right?'
else
  puts 'Did you?'
end

# Snippet 3 # 'Alright now!' Because the first true expression is
            # (x + 1) >= y.  So it prints that statement and then
            # exits the conditional without furhter execution
y = 9
x = 10

if (x + 1) <= y
  puts 'Alright.'
elsif (x + 1) >= y
  puts 'Alright now!'
elsif (y + 1) == x
  puts 'ALRIGHT NOW!'
else
  puts 'Alrighty!'
end