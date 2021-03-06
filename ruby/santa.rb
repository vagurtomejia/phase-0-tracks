
class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    #puts "Initializing Santa instance ..."
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
    removed_reindeer = @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(removed_reindeer)
  end
end

#TEST CODE

# carlos = Santa.new('N/A', 'Latino')

# carlos.speak

# carlos.eat_milk_and_cookies('burrito')

# p carlos.age
# carlos.celebrate_birthday
# p carlos.age

# p carlos.get_mad_at('Rudolph')



example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  santa =  Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.age = rand(140)
  puts "Santa number #{i + 1} is #{santa.age} years old, #{santa.gender}, #{santa.ethnicity} ."
end
puts "\nLook forward to many enjoyable encounters and interaction at this year's SantaCon!"