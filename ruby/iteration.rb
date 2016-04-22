
#Release 0
# say_magic_word - method that takes a block and prints a super magic word
# print out a status message before and after running the block
def say_magic_word
  magic_word = "supercalifragilisticexpialidocious"
  puts "Suspens before running the block..."
  yield(magic_word)
  puts "Atonishment after running the block!"
end

say_magic_word { |word| puts "The word is #{word}!"}

#Release 1
#initialize Hash and Array
meaningful_words = {"Mary Poppins" => "Supercalifragilisticexpialidocious", "Cinderella" => "Bibbidi-Bobbidi-Boo", "Jack and the Beanstalk" => "Fee-fi-fo-fum", "Harry Potter" => "Wingardium Leviosa"}

meaningful_words_authors = ["Mary Poppins", "Fairy Godmother", "Blunderbore", "Hermione Granger"]

#using .each iteration
puts "\nPrinting meaningful_words before iteration using \"each\": #{meaningful_words}"
puts "Printing meaningful_words_authors before iteration using \"each\": #{meaningful_words_authors}"

puts "\nThe most meaningful words ever pronounced are: "
meaningful_words.each { |word_key, word_value| puts "#{word_value} in #{word_key}" }

puts "\nThe brilliant authors of those meaningful words are (respectively): "
meaningful_words_authors.each { |author| puts "#{author}" }

puts "\nPrinting meaningful_words after iteration using \"each\": #{meaningful_words}"
puts "Printing meaningful_words_authors after iteration using \"each\": #{meaningful_words_authors}"

#using .map iteration
new_words = meaningful_words.map do |word_key, word_value|
  word_value += "!"
end
puts "\nPrinting new_words: #{new_words}"

new_authors = meaningful_words_authors.map do |word_author|
  word_author.upcase
end
puts "Printing authors: #{new_authors}"

puts "\nPrinting meaningful_words after iteration using \".map\": #{meaningful_words}"
puts "Printing meaningful_words_authors after iteration using \".map\": #{meaningful_words_authors}"

#using .map! iteration
authors = meaningful_words_authors.map! do |word_author|
  word_author.upcase
end

puts "\nPrinting meaningful_words_authors after iteration using \".map!\": #{meaningful_words_authors}"

#Release 2
puts "\n"
#filter from Array with condition
p meaningful_words_authors.select {|author| author != "MARY POPPINS"}
p meaningful_words_authors.reject {|author| author == "BLUNDERBORE"}

#delete from Array with condition
meaningful_words_authors.delete_if {|author| author.length < 13 }
p meaningful_words_authors

meaningful_words_authors.keep_if {|author| author == "FAIRY GODMOTHER" }
p meaningful_words_authors

#filter from Hash with condition
p meaningful_words.select {|k,v| k == "Mary Poppins"}
p meaningful_words.reject {|k,v| k == "Mary Poppins"}

#delete from Hash with condition
meaningful_words.delete_if {|k,v| k == "Harry Potter"}
p meaningful_words
meaningful_words.keep_if {|k,v| v != "Supercalifragilisticexpialidocious"}
p meaningful_words
