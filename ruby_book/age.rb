# How old are you?

puts "Hi, how old are you?"
age = gets.chomp.to_i

years = [10, 20, 30, 40]
years.each do |year|
  puts "In #{year} you'll be:
  #{age + year} years"
end
