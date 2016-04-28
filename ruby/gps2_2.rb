# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # gather grocery items, split them into a string => array of strings
  # set default quantity of each item to 1
  # convert array of strings to a hash, set item string as key
  # and set default value as value in hash
  # print the list to the console [can you use one of your other methods here?] <= we can call the final method here
# output: [what data type goes here, array or hash?]
# output will be a hash showing the keys and values as strings and their quantity
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
# input: original hash + item name and optional quantity
# steps: add item and quantity to the hash
  # IF quantity is given, update value in hash
  # ELSE quantity is default value of 1
# output: new hash with updated items and quantities
def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

# Method to remove an item from the list
# input: orignal hash + item to be removed
# steps: remove item
# output: new hash with updated items and quantities
def remove_item(grocery_list, item)
  grocery_list.delete(item)
end

# Method to update the quantity of an item
# input: original hash + item to be updated and a new quantity as integer
# steps: take item and quantity and add to original hash using hash documentation
# our_hash["carrot"] = new_quantity
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


