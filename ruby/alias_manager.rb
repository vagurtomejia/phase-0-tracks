
#METHOD DECLARATIONS

#encode_name method: change the vowels to the next vowel in 'aeiou', and all of the consonants to the next consonant in the alphabet.
#"Felicia" will return "Gimodoe"
def encode_name(name)
    #downcase the name
    name.downcase!
    #convert the name into array
    name_letters = name.split('')
    #name_letters.select { |l| l =~ /[aeiou]/ }  #=> ["a", "e"]
    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    name_letters.map! do |l|
      index = vowels.find_index(l)
      if index != nil
        #side effect management
        new_index = index >=  vowels.count - 1 ? 0 : index + 1
        vowels[new_index]
      else
        index = consonants.find_index(l)
        #side effect management
        new_index = index >=  consonants.count - 1 ? 0 : index + 1
        consonants[new_index]
      end
    end
    encoded_name = name_letters.join('')
    encoded_name.capitalize
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
  alias_name = new_last_name + ' ' + new_first_name
  return alias_name
end

#DRIVER CODE

puts "Hello, brave agent! And welcome to Fake-Name-Generator 1.0!"
user_answer = ""
while user_answer != "quit" do
  puts "What is your real name?"
  user_answer = gets.chomp
  if user_answer != "quit"
    puts "Your alias name from now on will be \'#{generate_alias(user_answer)}\'. Congrats!"
  end
end
