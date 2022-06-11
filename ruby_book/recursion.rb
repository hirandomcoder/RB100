def recursion(number)
  puts number
  
  if number == 100
    return "The end"
  end

  recursion(number + 1)
end

recursion(40)