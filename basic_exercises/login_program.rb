# Login program.

PASSWORD = "password"
USERNAME = "user"

loop do 
  puts "Please type your username:"
  user = gets.chomp

  puts "Please type the password:"
  input = gets.chomp

  if input == PASSWORD && user = USERNAME 
    break
  end

  puts ">> Wrong CREDENTIALS, please try again infinitely."
end

puts "Hi! Welcome in the main program."
