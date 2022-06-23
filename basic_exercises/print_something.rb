# Print something exercise. 

loop do 
  puts ">> You want to print something? (y/n)"
  answer = gets.chomp.downcase

  if answer == "y"
    puts "something"
    break
  elsif answer == "n"
    break 
  end

  puts "invalid input, please enter y or n"
end