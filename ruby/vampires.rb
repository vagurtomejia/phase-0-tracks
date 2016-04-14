# Gathering the data of the employee
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_of_birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
likes_garlic = gets.chomp
if likes_garlic == "y"
  likes_garlic = true
else
  likes_garlic = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
needs_insurance = gets.chomp
if needs_insurance == "y"
  needs_insurance = true
else
  needs_insurance = false
end


