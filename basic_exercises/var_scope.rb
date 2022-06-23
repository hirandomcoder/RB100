a = 7

def my_value(b)
  a = b  
end

my_value(a + 5)
puts a

# array = [1, 2, 3]

# array.each do |element|
#   c = element
# end

# puts c

x = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    a += b
  end
end

my_value(array, x)
puts a