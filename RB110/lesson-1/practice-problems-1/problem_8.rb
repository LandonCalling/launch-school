=begin
The Array#take method takes a non-negative integer (n) as an argument, and 
returns the first n values in the calling array.  It is non-destructive, meaning
it won't change the calling array.

In this case, the take method is called with the argument 2, so the first two
elements of 'arr' will be returned as an array.
=end

arr = [1, 2, 3, 4, 5]
arr.take(2)