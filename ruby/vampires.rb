
# Asking for employee's data
valid_input = false;
while !valid_input
  puts "What is your name?"
  employee_name = gets.chomp
  #would find a match only if the input string contain letters or spaces
  res = employee_name.match(/^[[:alpha:][:blank:]]+$/)
  if res != nil
    valid_input = true
  else
    puts "Seriously? Come on! This is not even a name!"
  end
end

puts "How old are you?"
employee_age = gets.chomp.to_i

puts "What year were you born?"
employee_birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
employee_likes_garlic = gets.chomp
employee_likes_garlic == "y" ? employee_likes_garlic = true : employee_likes_garlic = false

puts "Would you like to enroll in the company’s health insurance? (y/n)"
employee_needs_insurance = gets.chomp
employee_needs_insurance == "y" ? employee_needs_insurance = true : employee_needs_insurance = false


