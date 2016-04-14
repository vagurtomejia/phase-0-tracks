# Asking for employee's data
valid_input = false;
while !valid_input
  puts "What is your name?"
  name = gets.chomp
  #would find a match only if the input string contain letters or spaces
  res = name.match(/^[[:alpha:][:blank:]]+$/)
  if res != nil
    valid_input = true
  end
end

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_of_birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
likes_garlic = gets.chomp
likes_garlic == "y" ? likes_garlic = true : likes_garlic = false

puts "Would you like to enroll in the company’s health insurance? (y/n)"
needs_insurance = gets.chomp
needs_insurance == "y" ? needs_insurance = true : needs_insurance = false


