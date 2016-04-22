
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
meaningful_words = {"Mary Poppins" => "supercalifragilisticexpialidocious", "Cinderella" => "Bibbidi-Bobbidi-Boo", "Jack and the Beanstalk" => "Fee-fi-fo-fum!", "Harry Potter" => "Wingardium Leviosa"}

meaningful_words_authors = ["Mary Poppins", "Fairy Godmother", "Blunderbore", "Hermione Granger"]


p meaningful_words
p meaningful_words_authors
#p meaningful_words["Mary Poppins"]


# supercalifragilisticexpialidocious - Mary Poppins
# Hermione Granger Wingardium Leviosa
# Bibbidi-Bobbidi-Boo Fairy Godmother - Cinderella
# Fee-fi-fo-fum!, -Jack and the Beanstalk - Blunderbore.