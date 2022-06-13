=begin
pedac
problem, examples, data structures, algorithm, code

We want to count the characters in a string without using .length or .size.
So, the string "yves" would be the input & the expected output would be 4
because we have 4 characters, y, v, e and s.

Data structure & algorithm
 - string
 - initial counter set to 0
 - looping construct that goes over each character in the string and by using the counter to reference each char
  - char ? increment counter : break the loop
 - return the counter
=end

require "pry"

def count(string)
  counter = 0
  loop do 
    string[counter] ? (counter += 1) : break 
  end
  counter
end

p count("yves")
# => 4
p count("hello there")
# => 11


