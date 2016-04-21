
puts "Welcome! This program will allow you to enter and store the details of your new client: "

# create an Hash named client_data
client_data = {}

# ask for the client's name
puts "His/Her name?"
# retrieve the inputed name as a String
client_answer = gets.chomp
# store it with the key :name
client_data[:name] = client_answer


# ask for the client's age
puts "His/Her age?"
# retrieve the inputed age as an Integer
client_answer = gets.chomp.to_i
# store it with the key :age
client_data[:age] = client_answer

# ask for the client's number of children
puts "How many children does he/she has?"
# retrieve the inputed number of children as an Integer
client_answer = gets.chomp.to_i
# store it with the the key :nb_children
client_data[:nb_children] = client_answer

# ask for the client's decor theme
puts "His/Her decor theme?"
# retrieve the inputed decor theme as a String
client_answer = gets.chomp
# store it with the key :decor_theme
client_data[:decor_theme] = client_answer

# ask for the client's favorite color
puts "His/Her favorite color?"
# retrieve the inputed favorite color as a String
client_answer = gets.chomp
# store it with the key :favorite_color
client_data[:favorite_color] = client_answer

# ask if the client's wants to apply the feng shui principles in the decor
puts "Does the client wants to apply the feng shui principles in the decor? (y/n)"
# retrieve the inputed feng shui decor preferences as a Boolean
client_answer = gets.chomp
client_answer = client_answer == "y" ? true : false
# store it with the key :feng_shui
client_data[:feng_shui] = client_answer

# Print client_data back out to the screen
puts "\nHere is your client's data:"
client_data.each {|key, value| puts "#{key} : #{value}"}

# As the user if he/she wants to update some data:
# - Type "none" if no data needs to be update
# - Type the corresponding key if the data needs to be updated
puts "\nDo you want to update your client's data? Please Type \"none\" if no data needs to be update, otherwise type the corresponding key."
#   -display the keys
possible_keys = ""
client_data.each_key {|key| possible_keys += "#{key.to_s}, " }
possible_keys.chop!.chop!
puts "The possible keys you can update are #{possible_keys}."

client_answer = gets.chomp
# if the user response is "none", do not do anything
if client_answer == "none"
# otherwise,
else
#   -ask the user to input a value
  puts "What is the new data value for #{client_answer}?"
  client_value = gets.chomp
#   -store the value at the corresponding key
  client_data[client_answer.to_sym] = client_value
end

# Print client_data back out to the screen
puts "\nHere is your client's data:"
client_data.each {|key, value| puts "#{key} : #{value}"}

puts "\nThank you for using our program. Good bye!"