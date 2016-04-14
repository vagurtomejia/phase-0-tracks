
# METHOD DECLARATIONS

#encrypts a string: advances every letter of the string one letter forward
def encrypt (unencripted_string)
  #find the lenght of the string
  string_lenght = unencripted_string.length

  encripted_string = ""
  index = 0
  #for each letter on the string
  while index < string_lenght
    #find the position of the letter
    letter = unencripted_string[index]
    if letter == "z"
      #add "a" to the result
      encripted_string += 'a'
    else
      #add the next letter to the result
      encripted_string += letter.next
    end
    index+=1
  end
  encripted_string
end


#decrypts a string: reverses the process of the encrypt method
def decrypt (undecrypted_string)
  #find the length of the string
  string_length = undecrypted_string.length

  #create alphabet index
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  index = 0
  decrypted_string = ""

  #for each letter on the string
  while index < string_length
    letter = undecrypted_string[index]
    #find position in the alphabet
    index_original = alphabet.index(letter)
    #add previous letter in the alphabet to the result
    decrypted_string += alphabet[index_original - 1]
    index += 1
  end
  decrypted_string
end

# DRIVER CODE

#Asks User if he would like to decrypt or encrypt a password
puts "Hello! Would you like to decrypt or encrypt a password?"
encryption_choice = gets.chomp

puts "You chose #{encryption_choice}."

#Asks User for Password
puts "What is the password?"

password = gets.chomp
puts "Your password is #{password}."

#encrypts or decrypts Given Password
if encryption_choice == "encrypt"
  result = encrypt(password)
else
  result = decrypt(password)
end

#Prints Result to Screen
puts "Here is your result: #{result}"

#NOTE: puts decrypt(encrypt("swordfish")) Nesting Methods is a valid #option. In this example, first the encrypt method will operate on  #"swordfish" giving "txpsegjti." Next, decrypt will use the output of
#encrypt, which is "txpsegjti," ultimately resulting in the output #"swordfish"
