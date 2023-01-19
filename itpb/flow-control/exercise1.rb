puts (32 * 4) >= 129 # False, because 32 * 4 is 128 which is less than 129
puts false != !true  # False, because !true evaluates to false so the two 
                     # sides are equal
puts true == 4       # False, because true and 4 are different types
puts false == (847 == '847')
                     # True, because the second side evaluates to false
                     # because the are different typees, which means
                     # that you get false == false which is true.
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
                     # True.  On the first side of the OR statement we have
                     # !true which evaluates to false, !(100 / 5) == 20 which
                     # evaluates to false because 100 / 5 returns a number
                     # which is truthy so not-ing it returns false and
                     # false isn't the same type as 20, and true, because 
                     # 328 / 4 evaluates to 82.  So the entire first side
                     # evaluates to true.  This makes the entire expression
                     # evaluate to true.