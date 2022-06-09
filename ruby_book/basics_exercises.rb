# First plus last name.
first_name = "John"
last_name = "Doe"

puts "#{first_name} #{last_name}"
puts first_name + ' ' + last_name
puts first_name + " " + last_name

# Four digit number
number = 4168

# Get thousands place.
thousands = number / 1000
p thousands

# Get hundreds place.
hundreds = (number % 1000) / 100
p hundreds

# Get tens place.
tens = (number % 100) / 10
p tens

# Get ones place.
ones = (number % 10)
p ones

# Movie's Hash.
movies = {
  "Movie 1" => "1991",
  "Movie 2" => "1995"
}

puts movies.values
puts movies["Movie 1"]
puts movies["Movie 2"]

# Movies's Array.
movies_array = movies.values 
puts "Movies Array:"
puts movies_array[0]
puts movies_array[1]

# Movies Array 2.
puts "Movies Array 2:"
movies_arr = []
movies.each_value { |v| movies_arr << v }
puts movies_arr

# Square of 3
puts 1.235 ** 2
puts 3.235 ** 2
puts 2.235 ** 2