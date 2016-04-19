# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#DEFINED METHODS
def diplay_suspect_method(method_signature, method_call)
  puts "\n"
  puts "Name and signature of the suspected method:"
  puts method_signature
  puts "Evidence:"
  puts "result for the call of #{method_call}: "
end

#DRIVER CODE
puts "Mr prosecutor, you know that some methods have been roaming around causing trouble in the last few weeks! I have found the suspects and I bring you here the evidence for you to be able to condemn and compensate the poor strings, victims of all those awfull crimes! \n\n"


# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
#suspects: swapcase → new_str
#AND swapcase! → str or nil
diplay_suspect_method("swapcase → new_str", "\"iNvEsTiGaTiOn\".swapcase")
puts "iNvEsTiGaTiOn".swapcase
diplay_suspect_method("swapcase! → str or nil", "\"iNvEsTiGaTiOn\".swapcase!")
puts "iNvEsTiGaTiOn".swapcase!


# “zom”.<???>
# => “zoom”
#suspects: gsub(pattern, replacement) → new_str
#AND gsub!(pattern, replacement) → str or nil
#AND sub(pattern, replacement) → new_str
#AND sub!(pattern, replacement) → str or nil
#AND insert(index, other_str) → str
diplay_suspect_method("gsub(pattern, replacement) → new_str", "puts “zom”.gsub(\"o\", \"oo\")")
puts "zom".gsub("o", "oo")
diplay_suspect_method("gsub!(pattern, replacement) → new_str", "puts “zom”.gsub!(\"o\", \"oo\")")
puts "zom".gsub!("o", "oo")
diplay_suspect_method("sub(pattern, replacement) → new_str", "puts “zom”.sub(\"o\", \"oo\")")
puts "zom".sub("o", "oo")
diplay_suspect_method("sub!(pattern, replacement) → new_str", "puts “zom”.sub!(\"o\", \"oo\")")
puts "zom".sub!("o", "oo")
diplay_suspect_method("insert(index, other_str) → str", "puts “zom”.insert(1, \"o\")")
puts "zom".insert(1, "o")


# "enhance".<???>
#=> “    enhance    ”
#suspect: center(width, padstr=' ') → new_str
diplay_suspect_method("center(width, padstr=' ') → new_str", "puts enhance.center(16, \' \')")
puts "enhance".center(16, " ")


# "Stop! You’re under arrest!".<???>
# => “STOP! YOU’RE UNDER ARREST!”
#suspects: upcase → new_str
#AND upcase! → str or nil
puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".upcase!


# "the usual".<???>
#=> “the usual suspects”
#suspect:
#str + other_str → new_str
#AND str << obj → str
puts "the usual" + " suspects"
puts "the usual" << " suspects"
puts "the usual".concat(" suspects")


#" suspects".<???>
#=> “the usual suspects”
#suspect:
#sub(pattern, replacement) → new_str
#AND sub!(pattern, replacement) → str or nil
#AND gsub(pattern, replacement) → new_str
#AND gsub!(pattern, replacement) → str or nil
puts " suspects".sub(" ", "the usual ")
puts " suspects".sub!(" ", "the usual ")
puts " suspects".gsub(" ", "the usual ")
puts " suspects".gsub!(" ", "the usual ")


# "The case of the disappearing last letter".<???>
# => “The case of the disappearing last lette”
#suspect:
#chop → new_str
puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => “he mystery of the missing first letter”
#suspect:


# "Elementary  ,    my   dear      Watson!".<???>
# => “Elementary, my dear Watson!”
#suspect:


#"z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)
#suspect:


#"How many times does the letter ‘a’ appear in this string?".<???>
#=> 4
#suspect: