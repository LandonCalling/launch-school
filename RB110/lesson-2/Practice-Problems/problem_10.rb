arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  new_hash = {}
  
  hash.each do |key, value|
    new_hash[key] = value + 1
  end

  new_hash
end

p new_arr
p arr