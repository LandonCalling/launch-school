puts ((32 * 4) >= '129') # ERROR, because you can't compare a string
                         # to an integer with >=
puts (847 == '847') # FALSE, for the same reason as number one
puts ('847' < '846') # FALSE, the per char comparison will skip the first
              # two chars in each string because they are the same
              # then will compare the last char in each string
              # and return false
puts ('847' > '846') # TRUE, following the same procedure as the previous problem
              # the last char of each is compared and it will return true
puts ('847' > '8478') # FALSE, since the per char comparison is the same for
               # all chars in the shorter string, the shorter string is
               # considered less than, thus returns false
puts ('847' < '8478') # TRUE, following the logic from the previous problem