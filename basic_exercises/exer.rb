=begin
Problem

- array of strings and we need an array of strings without the vowels

Example

- %w(green YELLOW black white) shoudl result in %w(grn YLLW blck wht)
  - green becomes grn because the ee's should be deleted
  - YELLOW becomes YLLW because the E and O should be deleted
  - black -> blck without a
  - white -> wht without i & e 


datastructure & algorithm

- array of strings 
- loop over the array & map the string with their string-without-vowel equivalent (aeiou)
- return this new array

=end

def remove_vowels(arr)
 arr.map do |word|
    word.delete("aeiouAEIOU")
 end
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


=begin

- reversing an array without reverse or reverse!

- set a range 
- loop in the right order through the range & add them to a new array
- replace contents of original array with contents of new  array
=end

def reverse!(arr)
  count = arr.length - 1
  new_arr = []

  count.downto(0) do |idx|
    new_arr << arr[idx]
  end

  arr.replace(new_arr)
end

list = [1,2,3,4]
result = reverse!(list)
p result 
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) 
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

p "--"

=begin
halvsies

- odd or even?
  - when even -> length / 2
  - when odd -> length / 2 + 1  
- take(length), drop()

=end

def halvsies(arr)
  length = arr.length
  half = length / 2 
  odd_half = half + 1 

  if length.even?
    result = [arr.take(half), arr.drop(half)]
  elsif length == 0
    arr
  else
    result = [arr.take(odd_half), arr.drop(odd_half)]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) 
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


arr = [18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
7,  34, 57, 74, 45, 11, 88, 67,  5, 58]

def tally(arr)
  tall = Hash.new(0)
  arr.each do |val|
    tall[val] += 1 
  end
  tall
end

a = [1, 2, 3, 1]
p tally(a)

p tally(arr).select { |k,v| v > 1}.keys.first

def num(arr)
  arr.each do |num|
    return num if arr.count(num) > 1 
  end
end

p num(arr)

p "__°°___"

def include?(arr, el)
  arr.any? do |val|
    val == el 
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
- * times 1 with rjust (length)
- * times 2 with rjust (length)
=end

def triangle(n)
  n.times do |num|
    puts ("*" * (num + 1)).rjust(n)
  end
end

triangle(9)

p "/////"

def interleave(arr1, arr2)
  count = arr1.length - 1 
  result = []

  (0..count).each do |idx|
    result << arr1[idx] 
    result << arr2[idx]
  end

  result 
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def letter_case_count(string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      count_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

def word_cap(string)
  string.split(" ").map { |val| val.capitalize }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def upper_case?(letter)
  (65..91).include?(letter.ord)
end

def lower_case?(letter)
 (97..123).include?(letter.ord)
end

def swapcase(string)
  string.chars.map do |char|
    if upper_case?(char)
      (char.ord + 32).chr
    elsif lower_case?(char)
      (char.ord - 32).chr
    else
      char
    end
  end.join
end

p swapcase('CamelCase') 
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def letter?(letter)
  letters = ('a'..'z').to_a + ('A'..'Z').to_a

  letters.include?(letter)
end

def staggered_case(sentence)
  characters = sentence.chars
  characters.each_with_index do |char, i|
    char.upcase! if (i+1).odd?
    char.downcase! if (i+1).even?
  end
  characters.join
end


p staggered_case('I Love Launch School!')

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case(sentence)
  counter = 0
  sentence.chars.map do |char|
    if letter?(char)
      counter += 1
      if counter.odd? 
        char.upcase
      else
        char.downcase
      end
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def show_multiplicative_average(arr)
  p arr.inject(:*) / arr.length.to_f 
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

def multiply_list(arr1, arr2)
  count = arr1.length - 1 
  new_arr = []

  (0..count).each do |i|
    new_arr << (arr1[i] * arr2[i])
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11])
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

end_result = [2, 4].product([4, 3, 1, 2]).map do |arr|
  arr.inject(:*)
end.sort
p end_result

def multiply_all_pairs(arr1, arr2)
  arr = []

  arr1.each do |num1|
    arr2.each do |num2|
      arr << [num1, num2]
    end
  end

  arr
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])


def penultimate(sentence)
  sentence.split(" ")[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

=begin
- set sum variable
- loop over each element (with index)
  - take all first (index + 1) elements
  - sum them
  - add this sum to the sum variable
- return sum
=end

def sum_of_sums(arr)
  sum = 0
  
  arr.each_with_index do |el, i|
    count = i + 1
    sum += arr.take(count).sum
  end

  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35


def leading_substrings(string)
  count = string.length - 1 
  arr = []
  new_arr = []

  string.chars.each_with_index do |char, i|
    arr << string[0..i]
  end

  (0..count).each do |i|
    new_arr << string[0..i]
  end

  arr
  new_arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(string)
  count = string.length - 1 
  end_result = []
  
  (0..count).each do |i|
    end_result << leading_substrings(string[i..count])
  end

  end_result.flatten 
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.length - 1
  while i >= 0
    reversed_words << words[i]
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'