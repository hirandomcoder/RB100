arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |num| puts num }

arr.each { |num| puts num if num > 5 }

odds = arr.select(&:odd?)
p odds

odds_two = arr.select { |num| num.odd? }
p odds_two

arr.append(11)
p arr

arr.prepend(0)
p arr 

arr.pop
arr << 3 
p arr 

p arr.uniq