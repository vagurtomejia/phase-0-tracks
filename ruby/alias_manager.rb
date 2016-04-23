
#METHOD DECLARATIONS

#encode_name method: change the vowels to the next vowel in 'aeiou', and all of the consonants to the next consonant in the alphabet.
#"Felicia" will return "Gimodoe"
def encode_name(name)
  # for both names:
  # downcase the name
#  real_name.downcase!
#   - convert them into arrays
#   - iterate into all the letters (elements on the array):
#     -if the letter is a vowel (a, e, i, o, or u)
#        -search its index index in 'aeiou'
#        -if the index is >= 'aeiou'.lenght -1, index = 0
#        -otherwise, change the letter to the corresponding letter with index + 1 in 'aeiou'
#     -otherwise,
#       change the letter into the next consonant in the alphabet
#       (do not forget to handle side effects)
# capitalize the name

#return encoded_name
end

#generate_alias method: takes a spy's real name  and creates and return a fake name
#"Felicia Torres" will return "Vussit Gimodoe"
def generate_alias(real_name)

  # split full name into first_name and last_name
  names = real_name.split(" ")
  first_name = names.first
  last_name = names.last

  new_first_name = encode_name(first_name)
  new_last_name = encode_name(last_name)

  # join last and first name (swapping them)

  alias_name = real_name #borrar!
  return alias_name
end

#DRIVER CODE

p generate_alias("Felicia Torres")