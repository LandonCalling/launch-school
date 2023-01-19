hash = { a: 50, b: 30, c: 20 }

hash.each_key { |key| puts key }
puts ""
hash.each_value { |value| puts value }
puts ""
hash.each { |key, value| puts "#{key}. #{value}"}