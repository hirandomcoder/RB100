def number_range(number)
  case 
  when number.between?(0,50)
    "1"
  when number.between?(51,100)
    "2"
  else
    "3"
  end
end

p number_range(1)
p number_range(60)
p number_range(112)