module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_hapilly(words)
    words + "!!!" + " :)" + " :)" + " :)" + " :)" + " :)"
  end
end

puts Shout.yell_hapilly("Chocolate")
puts Shout.yell_angrily("No chocolate left")