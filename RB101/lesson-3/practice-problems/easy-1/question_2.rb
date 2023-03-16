=begin
Describe the difference between ! and ? in Ruby, and explain what would
happen in the following scenarios:

1. What is != and where should you use it?
  - != is used for boolean comparisons and means not equal to.
2. put ! before something like !user_name
  - tests the falsiness of a value.  returns true if user_name is false or nil
3. put ! after something like words.uniq!
  - this usually means that the uniq! method will mutate the caller in some fashion
    however, this isn't guaranteed.
4. put ? before something
  - ternary operator? - the item after the question mark is what happens if
    the condition is true
5. put ? after something
  - this usually means that the method will return a boolean true or false. 
    however this isn't guaranteed.
6. put !! before something, like !!user_name
  - checks for the truthiness of user_name. Returns true if user_name is truthy
=end