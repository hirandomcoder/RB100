puts "hi"
text = gets.chomp

words = text.split (" ")
frequencies = Hash.new(0)

words.each {|x|
frequencies[x] += 1
}

 frequencies 

frequencies.each do |name, count|
   name + " " + count.to_s
end

frequencies  = frequencies.sort_by{|x, y|
  y
}

puts frequencies
frequencies.reverse!
