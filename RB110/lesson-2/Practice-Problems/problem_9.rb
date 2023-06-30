arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_arr = []
arr.each do |sub_arr|
  new_arr << sub_arr.sort { |a, b| b <=> a }
end
p new_arr