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

woufwouf = Puppy.new
woufwouf.fetch("Buzz Lightyear")
woufwouf.speak(4)
woufwouf.roll_over
p woufwouf.dog_years(2)
woufwouf.pee("the Christmas tree")
