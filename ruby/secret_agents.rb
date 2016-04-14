def encrypt (unencripted_string)
  #find the lenght of the string
  string_lenght = unencripted_string.length
  index = 0
  #for each letter on the string
      #replace with the next one into the alphabet
  encripted_string = ""
  while index < string_lenght
    letter = unencripted_string[index]
    if letter == "z"
      encripted_string += 'a'
    else
      encripted_string += unencripted_string[index].next
    end
    index+=1
  end
  encripted_string

end

puts encrypt("zed")