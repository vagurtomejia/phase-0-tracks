
def encrypt (unencripted_string)
  #find the lenght of the string
  string_lenght = unencripted_string.length
  index = 0
  #for each letter on the string
      #replace with the next one into the alphabet
  encripted_string = ""
  while index < string_lenght
    letter = unencripted_string[index]
    if letter == "z"
      encripted_string += 'a'
    else
      encripted_string += unencripted_string[index].next
    end
    index+=1
  end
  encripted_string

end



def decrypt (undecrypted_string)
  #find the length of the string
  string_length = undecrypted_string.length
  index = 0

  #create alphabet index
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  #for each letter on the string
  decrypted_string = ""
    #find previous letter using the alphabet
  while index < string_length
    letter = undecrypted_string[index]
    index_original = alphabet.index(letter)
    decrypted_string += alphabet[index_original - 1]
    index += 1
  end
  decrypted_string
    #replace with the previous letter in the alphabet
  #print output/result
end

#Asks User if he would like to decrypt or encrypt a password
puts "Hello! Would you like to decrypt or encrypt a password?"
encryption_choice = gets.chomp

puts "You chose #{encryption_choice}"

#Asks User for Password
puts "What is the password?"

password = gets.chomp
puts "Your password is #{password}"

#Encrypts or Decrypts Given Password
if encryption_choice == "encrypt"
  result = encrypt(password)
else
  result = decrypt(password)
end

#Prints Result to Screen
puts "Here is your result: #{result}"

#NOTE: puts decrypt(encrypt("swordfish")) Nesting Methods is a valid #option. In this example, first the encrypt method will operate on  #"swordfish" giving "txpsegjti." Next, decrypt will use the output of
#encrypt, which is "txpsegjti," ultimately resulting in the output #"swordfish"
