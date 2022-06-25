arr = ['a', 'b', 'c', 'd']

counter = 0

loop do
  puts arr[counter]
  break if counter == arr.length - 1
  counter += 1
end

p counter

p "----"

for letter in arr do 
  puts letter 
end

p "----"

counter = 0

while counter < arr.length
  puts arr[counter]
  counter += 1 
end

p "-----"

counter = 0

until counter == arr.length
  puts arr[counter]
  counter += 1
end

p "HASHASHAHSHSHAHASH"
hsh = { 'a' => 1, 'b' => 2, 'c' => 3 }
p hsh.count(['b',2])
p hsh.count { |k,v| k == 'a' }
p hsh.count 


p "---"

arr = ['a', 'b', 'c', 'a', 'a']

while arr.index("a")
  arr.delete_at(arr.index("a"))
end

p arr 

p "---"

hsh = { a: "hi", b: "hi", c: "steven" }

while k = hsh.key("hi")
  hsh.delete(k)
end

p hsh