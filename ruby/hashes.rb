
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
p client_data
puts "Here is your client's data:"
client_data.each {|key, value| puts "#{key} : #{value}" }

# As the user if he/she wants to update some data:
# - Type "none" if the no data need to be update
# - Type the corresponding key if the data need to be updates
#   -display the keys

# if the user response is "none", do not do anything
# otherwise,
#   -ask the user to input a value
#   -store the value at the corresponding key

# Print client_data back out to the screen
