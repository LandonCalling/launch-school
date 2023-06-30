arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hash|
  boolean_arr = hash.values.map do |num_arr|
    num_arr.all? { |num| num.even? }
  end

  boolean_arr.all? { |bool| bool == true }
end

p new_arr