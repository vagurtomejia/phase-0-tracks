# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_hapilly(words)
#     words + "!!!" + " :)" + " :)" + " :)" + " :)" + " :)"
#   end
# end

# puts Shout.yell_hapilly("Chocolate")
# puts Shout.yell_angrily("No chocolate left")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yell_hapilly(words)
    words + "!!!" + " :)" + " :)" + " :)" + " :)" + " :)"
  end
end

class PersonInParty
  include Shout
end

class EmotionallyExpressivePerson
  include Shout
end

puts PersonInParty.new.yell_angrily("You just stepped on me")
puts EmotionallyExpressivePerson.new.yell_hapilly("I'm the king of the world, whoooo")
