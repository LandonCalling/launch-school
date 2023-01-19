=begin
Assumptions:
  1. The data set given is representative of the rest of the data in the 
     data set.  Therefore:
        - all email addresses are of the form firstname@domain.
        - all the keys in the contacts hash use the person's full first name
          followed by a space and then their last name as a string.
  2. We cannot guarantee the order of the hash.
  3. There are no repeated first names.
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

keys = [:email, :address, :phone]

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts.each do |name, personal_data|
  first_name = name.split[0]
  contact_data.each do |person|
    user_name = person[0].split('@')[0]
    if first_name.downcase == user_name
      person.each_with_index do |data, idx|
        personal_data[keys[idx]] = data
      end
      next
    end
  end
end

p contacts
