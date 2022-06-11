contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

=begin
- loop over array
- for each element in the array update the corresponding hash with the right key value pairs
=end

names = contacts.keys

contact_data.each_with_index do |contact, i|
  contacts[names[i]][:email] = contact[0]
  contacts[names[i]][:address] = contact[1]
  contacts[names[i]][:phone] = contact[2]
end

p contacts 
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]