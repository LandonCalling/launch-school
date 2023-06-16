=begin
Given the 'munsters' has below modify the hash such that each member of the
Munster family has an additional 'age_group' key that has one of three values
describing the age group the family member is in (kid, adult, senior).  Your
solution should produce the example hash below.

age ranges are: kid => 0 - 17
                adult => 18 - 64
                senior => 65+
=end

=begin
Example hash

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |demographics|
  demographics['age_group'] = case demographics['age']
  when (0..17)  then 'kid'
  when (18..64) then 'adult'
  else               'senior'
  end
end

p munsters