answer = nil
while answer == "y" or answer == nil
  puts "Do you want to do that again?"
  answer = gets.chomp
end
puts "Thanks for your #{answer} answer!"