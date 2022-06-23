# Old syntax with Symbols & Strings.
car = { :type => 'sedan', :color => 'blue', :mileage => 80_000 }
car = { 'type' => "sedan", 'color' => 'blue', 'mileage' => 80_000 }

# New syntax (since ruby 1.9) only with Symbols. 
car = { type: 'sedan', color: 'blue', mileage: 80_000 }

car[:year] = 2003
p car 

car.delete(:mileage)
p car 
car[:mileage] = 80_000
p car 
car.delete_if { |k,v| k == :mileage }
p car 

arr = [1,2,3,4,5]
arr.delete_if { |x| puts x  }

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |k,v|
  v / 2 
end

p half_numbers

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

p car.to_a 

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]


colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player