# Ask name & print

puts "Hi, what's your first name?"
first_name = gets.chomp.capitalize
puts "What's your last name?"
last_name = gets.chomp.capitalize

full_name = first_name + " " + last_name

puts "Hi, #{full_name}!"

10.times { puts "#{full_name}" }