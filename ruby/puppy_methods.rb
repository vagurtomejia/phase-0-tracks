class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 11
  end

  def pee(place)
    puts "*...peeing on #{place}*"
  end

end

class BuzzLightyear

  def initialize
    @catchphrase = "To infinity and beyond!"
  end

  def shoot_laser(target)
    puts "I'm shooting my laser at #{target}!"
  end

  def say_catchphrase(number)
    number.times {puts @catchphrase}
  end

  def fly
    puts "I'm flying!"
  end

  def protect_galaxy
    puts "I'm sworn to protect the galaxy from the Evil Emperor Zurg!"
  end
end

#Puppy instance test
puts "\nCalling Puppy instance methods: "
woufwouf = Puppy.new
woufwouf.fetch("Buzz Lightyear")
woufwouf.speak(4)
woufwouf.roll_over
p woufwouf.dog_years(2)
woufwouf.pee("the Christmas tree")

#BuzzLightyear instance test
puts "\nCalling BuzzLightyear instance methods: "
my_buzzes = {}

50.times { |i| my_buzzes[i] = BuzzLightyear.new }
my_buzzes.each do |i, buzz|
  puts "\nCalling instance methods of Buzz #{i}: "
  buzz.shoot_laser("Evil Emperor Zurg")
  buzz.say_catchphrase(2)
  buzz.fly
  buzz.protect_galaxy
end



