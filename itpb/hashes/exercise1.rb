family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

siblings = family.select do |title, names|
  title == :sisters || title == :brothers
end

siblings = (siblings[:sisters] + siblings[:brothers]).flatten
p siblings