def name(name_array)
  name_array.sample
end

def activity(activity_array)
  activity_array.sample
end

def sentence(a_name, an_activity)
  "#{a_name} went #{an_activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))