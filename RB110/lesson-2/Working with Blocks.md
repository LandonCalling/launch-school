Example 3

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | method call (map) | The outer array | none | new array \[1, 3] | No
1-4 | block execution | Each sub-array | outputs the first element of each sub array | The first element of the sub-array | Yes, used by map for transformation
2 | method call (first) | Each sub-array | none | Element at index 0 of sub-array | Yes, used by puts
2 | method call (puts) | Each sub-array | Outputs a string representation of an integer | nil | No
4 | method call (first) | Each sub-array | none | Element at index 0 of sub-array | Yes, used to determine return value of block

On line `1` we are calling the `map` method on the multi-dimensional array ``[[1, 2], [3, 4]]``.  The do-end structure on lines `1-4` defines a block, and is passed each sub-array as the argument `arr`.  On line `2` we are calling the `first` method on the argument `arr`.  This returns the first element of the sub-array.  Then the `puts` method is called using the return value of the `first` method.  This outputs the string representation of the first integer in the array.  It then returns nil.  Then on line three we call the `first` method on the `arr` argument.  This returns the first element of the sub-array, which is used by the block as the return value.  The map method will then output a new array ``[1, 3]``.

Example 4

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | Argument Assignment | ``[[18, 7], [3, 12]]`` | none | ``[[18, 7], [3, 12]]`` | No
1 | method call (`each`) | The outer array ``[[18, 7], [3, 12]]`` | none | The calling object: ``[[18, 7], [3, 12]]`` | Yes, used by variable assignment to `my_arr`
1-7 | outer block execution | Each sub-array | none | Each sub-array | No
2 | method call (`each`) | Each sub-array | none | The calling object, which in this case is sub-array in current iteration  | Yes, used to determine return value of outer block
2-6 | inner block execution | Element of sub-array in that iteration | none | `nil` | No
3 | comparison (`>`) | Element of sub-array in that iteration | none | Boolean | Yes, evaluated by if
3-5 | conditional (`if`) | The result of the expression `num > 5` | none | `nil` | Yes, used to determine the return value of inner block
4 | method call (`puts`) | Element of the sub-array in that iteration | Outputs a string representation of an integer | `nil` | Yes, used to determine the return value of the conditional statement if the condition is met

On line `1` we initialize the variable `my_arr` and assign it the return value of the `each` method call.  The `each` method is called on line `1` on the multi-dimentional array `[[18, 7], [3, 12]]`.  The `do-end` structure on lines `1-7` define a block and the outer block is passed to the `each` method with the parameter `arr`.  On line `2` the `each` method is called on the sub-array, represented by `arr`, in the current iteration of the outer block.  The `do-end` structure on lines `2-6` define a block, and the inner block is passed to the `each` method with the parameter `num`, representing the current element in the sub-array.  On line `3` the comparison `num > 5` is made with the current element of the sub-array, and the result is passed to the `if` conditional.  If the number is greater than 5, then the statement on line `4` is executed.  On line `4` the `puts` method is invoked and passed the variable `num` as an argument. Working from the inside out, if line `4` is executed it will return `nil`, which will be passed to the `if` statement.  The `if` statement will return `nil`, either because the `puts` statement returned `nil`, or because the conditional wasn't `true`.  This return value is ignored by the inner block.  The `each` method call on line `2` returns the sub-array of the current iteration, which is ignored by the outer block.  The `each` method call on line `1` returns the original multidimensional array ``[[18, 7], [3, 12]]``.  This is then passed to the initialized variable `my_arr`.

Example 5

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | method call (`map`) | ``[[1, 2], [3, 4]]`` | none| ``[[2, 4], [6, 8]]`` | no
1-5 | outer block execution| Each sub-array | none | Transformation of each sub-array to have all elements doubled | Yes, used to determine the return value of the `map` method call on line `1`
2 | method call (`map`) | Each sub-array | none | Transformation of each sub-array to have all elements doubled | Yes used to determine the return value of the outer block
2-4 | inner block execution | Element of sub-array in current iteration | none | Element of sub-array in current iteration doubled | Yes, used to determine the return value of the `map` method call on line `2`
3 | Multiplication (`*`) | Element of sub-array in current iteration | none | Element of sub-array in current iteration doubled | Yes, used to determine the return value of the block

On line `1` we call the `map` method on the multi-dimensional array object ``[[1, 2], [3, 4]]``. The `do-end` structure on lines `1-5` define a block and the outer block is passed to the `map` method on line `1` with the parameter `arr`.  On line `2` the `map` method is called on `arr`.  The `do-end` structure on lines `2-4` define a block and the inner block is passed to the `map` method on line `2` with the parameter `num`.  On line three `num` is multiplied by `2`, and returned to the inner block.  This return value is used to transform the sub-array by doubling the elements.  The transformed sub-array is returned to the outer block, and the return value is used to transform the sub-arrays in the original array.

Example 6

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | method call (`select`) | Hash (`{{a: 'ant', b: 'elephant'}, {c: 'cat'}}`) | none | Hash (`{c: cat}`) | no
1-5 | outer block execution | Each sub-hash | none | Boolean | Yes, used to determine the return value of the `select` method call
2 | method call (`all?`) | Each sub-hash | none | Boolean | Yes, used to determine the return value of the outer block
2-4 | inner block execution | Key-Value pair of sub-hash in current iteration | none | Boolean | Yes, used to determine the return value of the `all?` method call
3 | comparison (`==`) | Key-Value pair of sub-hash in current iteration | none | Boolean | Yes used to determine the return value of the block.

On line `1` we call the `select` method on the nested hash `{{a: 'ant', b: 'elephant'}, {c: 'cat'}}`.  The `do-end` structure on lines `1-5` defines a block and the outer block is passed to the `select` method with the parameter `hash`.  On line `2` the `all?` method is called on `hash`.  The `do-end` structure on lines `2-4` defines a block and the inner block is passed to the `all?` method with the parameters `key` and `value`.  On line `3` the first letter of each string value is compared to the string version of each key using `==`.  The return value of this expression for all iterations is used to determine the return value of `all?`, which is a boolean.  The return value of the `all?` method is then used as the return value of the outer block.  This boolean value is then used to select the sub-hashes for the `select` method to return.

If we used `any?` instead of `all?`, it would select both sub-hashes.  This is because `any?` returns true if any of the iterations return true, whereas `all?` only returns true if all iterations return true.  Since the first key/value pair in the first sub-hash returns true, it would select that hash as well as the second sub-hash.  

Example 9

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | method call (`map`) | ``[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]`` | none | ``[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]`` | no
1-7 | outermost block execution | each nested sub-array | none | each nested sub-array | Yes, used to determine the return value of the `map` method call
2 | method call (`each`) | Each nested sub-array | none | Each nested sub-array | Yes, used to determine the return value of the outermost block
2-6 | middle block execution | Each sub-array of nested sub-array | none | Each sub-array partitioned into two arrays.  One with the true values.  One with the false values | No
3 | method call (`partition`) | Each sub-array of nested sub-array | none | Each sub-array partitioned into two arrays.  One with the true values.  One with the false values | Yes, used to determine the return value of the middle block
3-5 | innermost block execution | Each sub-array of nested sub-array | none | Boolean | Yes, used to determine the return value of `partition` method call
4 | method call (`size`) | Each element of sub-array of nested sub-array | none | Integer, representing either the # of chars in the string or the bit size of the integer | Yes, used by the comparison on line `4`
4 | comparison (`>`) | Each element of each sub-array of nested sub-array | none | Boolean | Yes, used to determine the return value of the block

On line `1` we call the map method on the triple-level nested array ``[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]``.  The `do-end` structure defines a block and the outermost block is passed to the `map` method with the parameter `element1`.  On line `2` the `each` method is called on `element1`.  The `do-end` structure on lines `2-6` defines a block and the middle block is passed to the `each` method with the parameter `element2`.  On line `3` we call the `partition` method on `element2`.  The `do-end` structure on lines `3-5` defines a block and is passed to the `partition` method with the parameter `element3`.  On line `4` we call the `size` method on `element3`, and the return value is used by the comparison (`>`) on line 4. The comparison on line `4` checks whether the given element has a size greater than 0.  This size represents either the bit size of the integer, or the # of chars in the string.  The boolean value obtained on line `4` is used to determine the return value of the innermost block.  This return value is then used to partition each sub-array of each nested sub-array into true and false values.  These partitioned sub-arrays are then used to determine the return value of the middle block.  This return value is not used by the `each` method call.  The `each` method call returns the original `element1` as it was given, which is used as the return value of the outermost block.  This return value is used by the `map` method call to determine the transformation of the original triple level nested array.  Because the each method returns the elements of the outermost array without change, `map` doesn't transform the array. 

Example 10

Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---|---|---|---|---|---
1 | method call (`map`) | ``[[[1, 2], [3, 4]], [5, 6]]`` | none | ``[[[2, 3], [4, 5]], [6, 7]]`` | no
1-11 | outermost block execution | Each sub-array | none | Each sub-array with the elements incremented by 1 | Yes, used to determine the return value of the `map` method call on line `1`
2 | method call (`map`) | Each sub-array | none | Each sub-array with the elements incremented by 1 | Yes, used to determine the return value of the block
2-10 | middle block execution | Each elemet of each sub-array | none | Each element of each sub-array incremented by 1 | Yes, used to determine the return value of the `map` method call on line `2`
3 | method call (`to_s`) | Each element of each sub-array | none | String representation of the given element | Yes, used by the `to_i` method call
3 | method call (`to_i`) | String representation of the current element | none | Integer, representing the converted string | Yes, used by the `==` comparison
3 | comparison (`==`) | Each element of each sub-array and its string-integer conversion | none | Boolean | Yes, used by the conditional to determine next step
3-9 | conditional (`if`) | Each element of each sub-array | none | Either an integer incremented by one, or an array with the elements incremented by 1 | Yes, used to determine the return value of the middle block
4 | method call (`+`) with an integer `1` as an argument | each element of sub-array | none | Integer | Yes, used to determine the return value of the `if` conditional
6 | method call (`map`) | each nested sub-array of outer sub-array | none | transformed sub-array | yes, used to determine the return value of the `if` conditional
6-8 | innermost block execution | Each nested sub-array of outer sub-array | none | Integer | Yes, used to determine the return value of the `map` method call on line `6`
7 | method call (`+`) with an integer `1` as an argument | Each element of each nested sub-array | none | Integer | Yes, used to determine the return value of the innermost block

On line `1` we call the `map` method on the triple level nested array ``[[[1, 2], [3, 4]], [5, 6]]``.  The `do-end` structure on lines `1-11` define a block, and the outermost block is passed to the `map` method on line `1` with the parameter `arr`.  On line `2` we call the `map` method on `arr`.  The `do-end` structure on lines `2-10` define a block, and the middle block is passed to the `map` method on line `2` with the parameter `el`.  On line 3 we call  the `to_s` method on each element of the sub-array.  We then take this string representation and call the `to_i` method and convert the string  representation of each element of the sub-array to an integer.  Then we compare that return value with the original element and check for equality (`==`).  The boolean return value of this comparison is then used by the conditional (`if`) on lines `3-9`.  If it is true we execute line `4` and use the method call `+` to add one to the element, otherwise we skip to line `6` because it is a nested sub-array.  On line `6` we call the `map` method on the nested sub-array, represented by `el`.  The `do-end` structure on lines `6-8` defines a block, and the innermost block is passed to the `map` method on line `6` with the parameter `n`.  On line `7` we call the `+` method on `n` with the intger `1` as an argument.  The return value of this is used by the block to transform each nested sub-array.  Then either this return value, or the return value from line `4` is used to determine the return value of the `if` statement.  The return value of the `if` statement on lines `3-9` is then used to determine the return value of the middle block, which is used by the `map` method call on line `2`.  The return value of the `map` method call on line `2` is then used by the outermost block, and returned by the block to the `map` method call on line `1`.  This return value is used to transform the original calling array.  The return value of the entire statement is ``[[[2, 3], [4, 5]], [6, 7]]``.