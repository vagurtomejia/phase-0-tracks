#Asks for the hamster data:
puts "Hamster's name:"
name = gets.chomp

puts "Volume level:"
volume_level = gets.chomp.to_i

puts "Fur color:"
fur_color = gets.chomp

puts "Good candidate? (Y/N)"
good_candidate = gets.chomp.upcase
if good_candidate == "Y"
  good_candidate = true
else
  good_candidate = false
end

puts "Age:"
age = gets.chomp
if age.empty?
  age = nil
else
  age = age.to_i
end

#Prints the hamster data:
puts "**************"
puts "#{name} data: "
puts "**************"
puts "#{name} is a lovely #{fur_color} hamster."
if age == nil
  puts "We do not know his age."
else
  puts "He is #{age} days old."
end

if good_candidate
  puts "He is a good candidate for adoption."
else
  puts "Unfortunately, he is not a good candidate for adoption."
end

case volume_level
when 0, 1, 2, 3
  puts "He is silent."
when 4, 5, 6
  puts "He is medium noisy."
when 7, 8, 9, 10
  puts "He is noisy."
else
  puts "Our guess is that he is really silent."
end
