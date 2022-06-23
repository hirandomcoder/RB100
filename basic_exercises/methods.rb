def time_of_day(daylight)
  daylight ? (puts "It's daytime!") : (puts "It's nighttime!")
end

daylight = [true, false].sample
time_of_day(daylight)

def assign_name(name="Bob")
  name
end

puts assign_name("Kevin") == 'Kevin'
puts assign_name == 'Bob'

def method
  break 4 
end

puts method 