
#METHODS DEFINITION

# method that takes three names as parameters and returns an array of those names
# build_diversity_names("Grumpy", "Pocahontas", "White") would return ["Grumpy", "Pocahontas", "White"].
def build_diversity_names(first_name, middle_name, last_name)
  diversity_name = [first_name, middle_name, last_name]
end

#method that takes an array and an item as parameters, and returns the array with the item added.
def add_to_array(array, element)
  array << element
end

#DRIVER CODE

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

puts "\nResult for the call of build_diversity_names(\"Grumpy\", \"Pocahontas\", \"White\") :"
p build_diversity_names("Grumpy", "Pocahontas", "White")

puts "Result for the call of build_diversity_names(1, \"two\", nil) :"
puts "(... What? Integers and strings should be able to marry each other in a perfect diversity-respectful world :-) )"
p build_diversity_names(1, "two", nil)

puts "\nResult for the call of add_to_array([], \"a\") :"
p add_to_array([], "a")

puts "Result for the call of add_to_array([\"a\", \"b\", \"c\", 1, 2], 3) :"
p add_to_array(["a", "b", "c", 1, 2], 3)

puts "Result for the call of add_to_array([\"Cinderella\", \"Rapunzel\", \"Belle\", \"Pocahontas\"], \"Grumpy\") :"
p add_to_array(["Cinderella", "Rapunzel", "Belle", "Pocahontas"], "Grumpy")

puts "Result for the call of add_to_array([\"The\"], \"End\") :"
p add_to_array(["The"], "End")


