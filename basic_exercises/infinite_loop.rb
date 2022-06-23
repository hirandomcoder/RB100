loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  
  break 
end

# action - break if - increment

iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  
  break if iterations == 5
  
  iterations += 1
end

# action - increment - break if 

iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  
  iterations += 1
  break if iterations > 5
end


# increment - action - break if

iterations = 0
loop do
  iterations += 1

  puts "Number of iterations = #{iterations}"
  
  break if iterations == 5
end


# increment - break if - action

iterations = 0
loop do
  iterations += 1
  break if iterations > 5

  puts "Number of iterations = #{iterations}"
  
end


# break if - action - increment

iterations = 1
loop do
  break if iterations > 5
  puts "Number of iterations = #{iterations}"
  iterations += 1
end

# break if - increment - action

iterations = 0
loop do
  break if iterations == 5
  iterations += 1

  puts "Number of iterations = #{iterations}"
  
end