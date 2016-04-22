

# say_magic_word - method that takes a block and prints a super magic word
# print out a status message before and after running the block
def say_magic_word
  magic_word = "supercalifragilisticexpialidocious"
  puts "Suspens before running the block..."
  yield(magic_word)
  puts "Atonishment after running the block!"
end

say_magic_word { |word| puts "The word is #{word}!"}