
#generate_alias method: takes a spy's real name  and creates and return a fake name
#"Felicia Torres" will return "Vussit Gimodoe"

# downcase the full name
# split full name into first_name and last_name
# for both names:
#   - convert them into arrays
#   - iterate into all the letters (elements on the array):
#     -if the letter is a vowel (a, e, i, o, or u)
#        -search its index index in 'aeiou'
#        -if the index is >= 'aeiou'.lenght -1, index = 0
#        -otherwise, change the letter to the corresponding letter with index + 1 in 'aeiou'
#     -otherwise,
#       change the letter into the next consonant in the alphabet
#       (do not forget to handle side effects)
# capitalize the first and last name
# join last and first name (swapping them)
# return alias_name