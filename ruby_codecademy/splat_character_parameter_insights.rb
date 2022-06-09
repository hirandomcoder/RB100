# The splat character uses an array data structure.

def greeting(greet, *friends)
  p friends.class
  p friends
end

greeting("hi", "Jef", "Lucas", "Josh")

