
# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
dwarfs = Array.new #or dwarfs = []
p dwarfs
# Add five items to your array. Print the array.
dwarfs << "Doc" << "Grumpy" << "Happy" << "Sleepy" << "Sneezy" #or dwarfs.push(..)
p dwarfs
# Delete the item at index 2. Print the array.
dwarfs.delete_at(2)
p dwarfs
# Insert a new item at index 2. Print the array.
dwarfs.insert(2, "Stealthy")
p dwarfs
# Remove the first item of the array without having to refer to its index. Print the array.
dwarfs.shift
p dwarfs
# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
if dwarfs.include?("Happy")
  puts "The array dwarfs contain the element \"Happy\""
else
  puts "The array dwarfs do not contain the element \"Happy\""
end
# Initialize another array that already has a few items in it.
female_protagonist = ["Cinderella", "Rapunzel", "Belle", "Pocahontas", "Jasmine", "Snow White"]
# Add the two arrays together and store them in a new variable. Print the new array.
diversity_couples = dwarfs + female_protagonist
p diversity_couples

