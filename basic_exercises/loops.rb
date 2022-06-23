iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5 ; iterations += 1
end

puts "----"

say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  (say_hello = false) if counter == 5

  counter += 1 
end

puts "----"

numbers = [1, 11, 111, 1112, 244]

while numbers.last
  puts numbers.pop 
end

puts "---"

numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end

puts "---"

count = 1

loop do
  count.odd? ? (puts "#{count} is odd.") : (puts "#{count} is even.")

  break if count == 5
  count += 1
end

puts "---"

process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "loop was processed"
    break
  end
else
  puts "loop wasnt processed"
end

puts "---"

5.times do |index|
  puts index
  break if index == 4
end

puts "-"

5.times do |index|
  puts index
  break if index < 7
end

puts "-------"

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

puts "--"

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1 
end


# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == "yes"
# end