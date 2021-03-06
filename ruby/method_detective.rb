# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#DEFINED METHODS
def diplay_suspect_method(method_signature, method_call)
  puts "\n"
  puts "Suspected method signature: #{method_signature}"
  puts "Evidence: the result for the call of #{method_call} is: "
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


# "zom".<???>
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
diplay_suspect_method("upcase → new_str", "Stop! You’re under arrest!\".upcase")
puts "Stop! You’re under arrest!".upcase
diplay_suspect_method("upcase! → new_str", "Stop! You’re under arrest!\".upcase!")
puts "Stop! You’re under arrest!".upcase!


# "the usual".<???>
#=> “the usual suspects”
#suspect:
#str + other_str → new_str
#AND str << obj → str
#AND concat(obj) → str
diplay_suspect_method("str + other_str → new_str", "\"the usual\" + \" suspects\"")
puts "the usual" + " suspects"
diplay_suspect_method("str + other_str → new_str", "\"the usual\" << \" suspects\"")
puts "the usual" << " suspects"
diplay_suspect_method("concat(obj) → str", "\"the usual\".concat(\" suspects\")")
puts "the usual".concat(" suspects")


#" suspects".<???>
#=> “the usual suspects”
#suspect:
#sub(pattern, replacement) → new_str
#AND sub!(pattern, replacement) → str or nil
#AND gsub(pattern, replacement) → new_str
#AND gsub!(pattern, replacement) → str or nil
#AND insert(index, other_str) → str
#AND prepend(other_str) → str
diplay_suspect_method("sub(pattern, replacement) → new_str", "\" suspects\".sub(\" \", \"the usual \")")
puts " suspects".sub(" ", "the usual ")
diplay_suspect_method("sub!(pattern, replacement) → str or nil", "\" suspects\".sub!(\" \", \"the usual \")")
puts " suspects".sub!(" ", "the usual ")
diplay_suspect_method("gsub(pattern, replacement) → new_str", "\" suspects\".gsub(\" \", \"the usual \")")
puts " suspects".gsub(" ", "the usual ")
diplay_suspect_method("gsub!(pattern, replacement) → str or nil", "\" suspects\".gsub!(\" \", \"the usual \")")
puts " suspects".gsub!(" ", "the usual ")
diplay_suspect_method("insert(index, other_str) → str", "\" suspects\".insert(0, \"the usual\")")
puts " suspects".insert(0, "the usual")
diplay_suspect_method("prepend(other_str) → str","\" suspects\".prepend(\"the usual\")")
puts " suspects".prepend("the usual")

# "The case of the disappearing last letter".<???>
# => “The case of the disappearing last lette”
#suspect:
#chop → new_str
#AND chop! → str or nil
#AND slice(range) → new_str or nil
#AND slice!(range) → new_str or nil
diplay_suspect_method("chop → new_str", "\"The case of the disappearing last letter\".chop")
puts "The case of the disappearing last letter".chop
diplay_suspect_method("chop! → new_str", "\"The case of the disappearing last letter\".chop!")
puts "The case of the disappearing last letter".chop!
diplay_suspect_method("slice(range) → new_str or nil", "\"The case of the disappearing last letter\".slice(0..38)")
puts "The case of the disappearing last letter".slice(0..38)

# "The mystery of the missing first letter".<???>
# => “he mystery of the missing first letter”
#suspect:
#delete([other_str]+) → new_str
#delete!([other_str]+) → str or nil
#slice(start, length) → new_str or nil
#slice!(fixnum, fixnum) → new_str or nil
#slice(range) → new_str or nil
#slice!(range) → new_str or nil

diplay_suspect_method("delete([other_str]+) → new_str","\"The mystery of the missing first letter\".delete(\"T\")")
puts "The mystery of the missing first letter".delete("T")
diplay_suspect_method("delete!([other_str]+) → str or nil","\"The mystery of the missing first letter\".delete!(\"T\")")
puts "The mystery of the missing first letter".delete!("T")
diplay_suspect_method("slice(start, length) → new_str or nil","\"The mystery of the missing first letter\".slice(1, 40)")
puts "The mystery of the missing first letter".slice(1, 40)
diplay_suspect_method("slice!(start, length) → new_str or nil","\"The mystery of the missing first letter\".slice!(1, 40)")
puts "The mystery of the missing first letter".slice!(1, 40)
diplay_suspect_method("slice(range) → new_str or nil","\"The mystery of the missing first letter\".slice(1..40)")
puts "The mystery of the missing first letter".slice(1..40)
diplay_suspect_method("slice!(range) → new_str or nil","\"The mystery of the missing first letter\".slice!(1..40)")
puts "The mystery of the missing first letter".slice!(1..40)


# "Elementary  ,    my   dear      Watson!".<???>
# => “Elementary, my dear Watson!”
#suspect:
#tr_s(from_str, to_str) → new_str
#AND tr_s!(from_str, to_str) → str or nil
#AND gsub(pattern, replacement) → new_str
#AND gsub!(pattern, replacement) → str or nil
#AND squeeze([other_str]*) → new_str
diplay_suspect_method("tr_s(from_str, to_str) → new_str","\"Elementary  ,    my   dear      Watson!\".tr_s(\" \",\" \").gsub(/\\s*,/, \",\")")
puts "Elementary  ,    my   dear      Watson!".tr_s(" "," ").gsub(/\s*,/, ",")
diplay_suspect_method("tr_s!(from_str, to_str) → new_str","\"Elementary  ,    my   dear      Watson!\".tr_s!(\" \",\" \").gsub(/\\s*,/, \",\")")
puts "Elementary  ,    my   dear      Watson!".tr_s!(" "," ").gsub(/\s*,/, ",")
diplay_suspect_method("gsub(pattern, replacement) → new_str","\"Elementary  ,    my   dear      Watson!\".gsub(/\\s{1,}/, \" \").gsub(/\\s*,/, \",\")")
puts "Elementary  ,    my   dear      Watson!".gsub(/\s{1,}/, " ").gsub(/\s*,/, ",")
diplay_suspect_method("gsub!(pattern, replacement) → str or nil","\"Elementary  ,    my   dear      Watson!\".gsub!(/\\s{1,}/, \" \").gsub!(/\\s*,/, \",\")")
puts "Elementary  ,    my   dear      Watson!".gsub!(/\s{1,}/, " ").gsub!(/\s*,/, ",")
diplay_suspect_method("squeeze([other_str]*) → new_str","\"Elementary  ,    my   dear      Watson!\".squeeze(\" \").gsub(/\\s*,/, \",\")")
puts "Elementary  ,    my   dear      Watson!".squeeze(" ").gsub(/\s*,/, ",")

#"z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)
#suspect:
#each_codepoint → an_enumerator
diplay_suspect_method("each_codepoint → an_enumerator","puts \"z\".each_codepoint.first")
puts "z".each_codepoint.first


#"How many times does the letter 'a' appear in this string?".<???>
#=> 4
#suspect:
#count([other_str]+) → fixnum
diplay_suspect_method("count([other_str]+) → fixnum","\"How many times does the letter ‘a’ appear in this string?\".count \"a\"")
puts "How many times does the letter ‘a’ appear in this string?".count "a"

