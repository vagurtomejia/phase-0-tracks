#METHODS DEFINITION

# asks for employee's data, analyse it (is the employee a vampire?)
#and return the result
def vampire_detection
  valid_input = false;
  while !valid_input
    puts "What is your name?"
    employee_name = gets.chomp
    #would find a match only if the input string contain letters or spaces
    res = employee_name.match(/^[[:alpha:][:blank:]]+$/)
    if res != nil
      valid_input = true
    else
      puts "Seriously? Come on! This is not even a name! Let's try again."
    end
  end

  puts "How old are you?"
  employee_age = gets.chomp.to_i

  puts "What year were you born?"
  employee_birth_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  employee_likes_garlic = gets.chomp
  employee_likes_garlic == "y" ? employee_likes_garlic = true : employee_likes_garlic = false

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  employee_needs_insurance = gets.chomp
  employee_needs_insurance == "y" ? employee_needs_insurance = true : employee_needs_insurance = false

  puts "Please list your allergies one at a time and type \"done\" when finished."
  allergy_is_sunshine = false
  allergies_are_finished = false
  until allergy_is_sunshine || allergies_are_finished
    puts "Your allergy: "
    allergy = gets.chomp
    if allergy == "sunshine"
      allergy_is_sunshine = true
      return "Probably a vampire."
    elsif allergy == "done"
      allergies_are_finished = true
    end
  end

  current_year = 2016
  computed_age = current_year - employee_birth_year
  correct_age = (computed_age == employee_age) ? true : false

  result_of_survey = ""
  if correct_age && employee_likes_garlic && employee_needs_insurance
    result_of_survey = "Probably not a vampire."
  elsif !correct_age && (!employee_likes_garlic || !employee_needs_insurance)
    result_of_survey = "Probably a vampire."
  elsif !correct_age && !employee_likes_garlic && !employee_needs_insurance
    result_of_survey = "Almost certainly a vampire."
  elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
    result_of_survey = "Definitely a vampire."
  else
    result_of_survey = "Results inconclusive."
  end
  return result_of_survey
end


#DRIVER CODE
puts "How many employees do you want to process?"
nb_employees = gets.chomp.to_i

nb_employees.times do |number|
  puts "Vampire-detection survey for the employee number #{number + 1}"
  puts "**************************************************"
  detection_result = vampire_detection
  puts "\nOur vampire-detection program indicates the following result for this employee: #{detection_result}\n\n"
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends! :-)"

