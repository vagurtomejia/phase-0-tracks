
#METHOD DECLARATIONS

#encode_name method: change the vowels to the next vowel in 'aeiou', and all of the consonants to the next consonant in the alphabet.
#"Felicia" will return "Gimodoe"
def encode_name(name)
    #downcase the name
    name.downcase!
    #convert the name into array
    name_letters = name.split('')

    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    #for each letter in name_letters
    name_letters.map! do |l|
      index = vowels.find_index(l)
      #if it is a vowel
      if index != nil
        #manage side effect
        new_index = index >=  vowels.count - 1 ? 0 : index + 1
        #return next vowel
        vowels[new_index]
      #otherwise
      else
        index = consonants.find_index(l)
        #manage side effect
        new_index = index >=  consonants.count - 1 ? 0 : index + 1
        #return next consonant
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
  new_first_name = encode_name(names.first)
  new_last_name = encode_name(names.last)
  # join last and first name (swapping them)
  alias_name = new_last_name + ' ' + new_first_name
end

#DRIVER CODE

puts "Hello, brave agent! And welcome to Fake-Name-Generator 1.0!"
alias_names = {}
user_answer = ""
while user_answer != "quit" do
  puts "\nWhat is your real name? (type \'quit\' to quit the program)"
  user_answer = gets.chomp
  if user_answer.match(/^[[:alpha:][:blank:]]+$/) == nil
    puts "Please enter a REAL real name, really!"
  elsif user_answer != "quit"
    alias_name = generate_alias(user_answer)
    alias_names[user_answer] = alias_name
    puts "Your alias name from now on will be \'#{alias_name}\'. Congrats!"
  end
end

puts "\nJust to be sure you will not forget (not that those names would be difficult to remember of course!): "
alias_names.each { |real_name, alias_name| puts "The real name of #{alias_name} is #{real_name}." }
puts "\nGood bye and thank you for using Fake-Name-Generator 1.0!"
