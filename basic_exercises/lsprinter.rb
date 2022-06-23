# puts "How many lines do we need to print?" 
# lines = gets.chomp.to_i


# lines.times do 
#   puts "LS is the best!"
# end


=begin
- ask how many lines they want to print
  - print those lines & ask again
  - if q or Q -> quit
=end


loop do 
  puts "How many lines? (Q to quit)"
  input = gets.chomp
  number = input.to_i 

  if ['q', 'Q'].include?(input)
    puts "Thanks for playing."
    break
  elsif number > 3 
    number.times {puts "LS is great..."} 
  elsif number <= 3
    puts "has to be bigger than 3"
    next 
  else
    puts "Something went wrong" 
  end 
end