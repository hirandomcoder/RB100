loop do
  puts 'Just keep printing...'
  break
end

# or

counter = 0
loop do
  counter += 1 
  puts 'Just keep printing...'
  break if counter == 1 
end
