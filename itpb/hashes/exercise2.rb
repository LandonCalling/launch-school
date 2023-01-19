final_test_grades = { ashley: 95,
                      gregory: 100,
                      becca: 75,
                      paul: 81,
                      sean: 89,
                      micah: 65,
                    }

class_grades = { ashley: 91,
                 gregory: 97,
                 becca: 80,
                 paul: 82,
                 sean: 89,
                 micah: 62
                }

# Hash#merge does not mutate the caller

puts "This is the hash we are operating on, final_test_grades:"
p final_test_grades
puts ""

puts "The result of calling Hash#merge on a hash returns a new hash."
puts "This is the result of calling Hash#merge on the variable " +
     " final_test_grades:"

p final_test_grades.merge(class_grades) do |name, final_grade, class_grade|
  final_grade > class_grade ? final_grade : class_grade
end

puts ""
puts "And here is the hash final_test_grades, unchanged:"
p final_test_grades

puts ""

# Hash#merge! mutates the caller

puts "Here again is the original variable final_test_grades:"
p final_test_grades

puts ""
puts "This time we are using the destructive method Hash#merge!"
puts "It returns the original hash, but it has been changed by " +
     "the calling method."

p final_test_grades.merge!(class_grades) do |name, final_grade, class_grade|
  final_grade > class_grade ? final_grade : class_grade
end

puts ""
puts "And here is the hash after the Hash#merge! method."
p final_test_grades
puts "It has been changed."
