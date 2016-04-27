class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

woufwouf = Puppy.new
woufwouf.fetch("Buzz Lightyear")
