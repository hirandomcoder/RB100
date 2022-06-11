# Return upcased string if bigger than 10 characters.
=begin
- take string as argument
- check if bigger than ten characters
- if yes: upcase
- if no: do nothing
=end

def upcase_string(sentence)
  if sentence.length > 10
    sentence.upcase
  else
    sentence
  end
end

p upcase_string("Hi there!!!")

def caps(string)
  unless string.length < 10
    string.upcase
  else 
    string 
  end
end

p caps("Joe Smith")
p caps("Joe Robertson")
