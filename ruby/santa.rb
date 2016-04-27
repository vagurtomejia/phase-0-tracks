
class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking =["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  def celebrate_birthday
    @age += 1
  end
  def get_mad_at(reindeer_name)
    @reindeer_ranking = @reindeer_ranking.delete_if { |reindeer| reindeer_name == reindeer }.push(reindeer_name)
  end
end

# my_santa = Santa.new
# my_santa.speak
# my_santa.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
  puts "Santa #{} is #{santa.age} years old and is #{santa.ethnicity} and #{santa.gender}."
  santa.speak
  santa.celebrate_birthday
  santa.get_mad_at("Comet")
  santa.gender = "N/A"
  puts "Santa #{} is #{santa.age} years old and is #{santa.ethnicity} and #{santa.gender}."
end

