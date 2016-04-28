# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # gather grocery items, split them into a string => array of strings
  # set default quantity of each item to 1
  # convert array of strings to a hash, set item string as key
  # and set default value as value in hash
  # print the list to the console [can you use one of your other methods here?] <= we can call the final method here
# output hash
def create_list(items)
  grocery_list = items.split(' ')
  hash_list = {}
  grocery_list.each do |item|
    hash_list[item] = 1
  end
  print_list(hash_list)
  hash_list
end

# Method to add an item to a list
# input: original hash + item name and quantity
# steps: add item and quantity to the hash
# output: hash with updated items and quantities
def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

# Method to remove an item from the list
# input: orignal hash + item to be removed
# steps: remove item
# output: hash with updated items and quantities
def remove_item(grocery_list, item)
  grocery_list.delete(item)
end

# Method to update the quantity of an item
# input: original hash + item to be updated and a new quantity as integer
# steps: take item and quantity and add to original hash
# output: hash with updated quantities of items
def update_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

# Method to print a list and make it look pretty
# input: original hash
# steps: iterate through all the elements in the hash
  # print the keys and the values of the entire hash
def print_list(hash_list)
  puts "Here is your grocery list: "
  hash_list.each do |item, integer|
    puts "-#{integer} #{item}"
  end
end

hash_list = create_list("carrots apples cereal pizza")

add_item(hash_list, "milk", 6)
print_list(hash_list)

remove_item(hash_list, "carrots")
print_list(hash_list)

update_item(hash_list, "apples", 4)
print_list(hash_list)




# ****************Reflection************
# What did you learn about pseudocode from working on this challenge?
# ->it is important to take the time to think about the details while peseudocoding in order to catch possible problems early
# What are the tradeoffs of using arrays and hashes for this challenge?
# ->the difficult part of using hashes would be at the creation of the hash, more "painful" that with an array, because we actually need to iterate in an array to create the items of the hash. But for accessing the elements afterwards everything (finding keys and retrieving values) the performance is much bigger that with an array.
# What does a method return?
# ->the evaluated result of the last line that is executed.
# What kind of things can you pass into methods as arguments?
# ->basic data types, methods, arrays, hashes
# How can you pass information between methods?
# ->using arguments
# What concepts were solidified in this challenge, and what concepts are still confusing?
# ->this challenge gave me the opportunity to test how Ruby deals with the arguments into methods. Parameter objects can directly be modified into the methods by default. This is not the case in other languages where you need to explicitly specify that you want to modify the object.