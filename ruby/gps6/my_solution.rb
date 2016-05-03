# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent 1 hour on this challenge.
require_relative 'state_data'

class VirusPredictor

  #initialize method called when an new instance of the class is created
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

  #calls  predicted_deaths and speed_of_spread methods for predictions
  def virus_effects
    number_of_deaths = predicted_deaths()
    speed = speed_of_spread()
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private
  #predicts how many people wil die based on the population density and the population
  def predicted_deaths()
    # predicted deaths is solely based on population density

    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

  #predicts in how many months it will spread across the state based on population_density
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  prediction = VirusPredictor.new(state)
  prediction.virus_effects
end


#=======================================================================
# Reflection Section
# ***What are the differences between the two different hash syntaxes shown in the state_data file?
# => One uses symbols as Hash keys, while the other one uses strings as Hash keys. The main differences between them are:

# 1.- Using symbols saves time when doing comparisons:
# If the Hash key is a string, Ruby needs to evaluate the string and look at it's contents (and compute a hash function on that) and compare the result against the (hashed) values of the keys which are already stored in the Hash.
# This is much faster using symbols. If the Hash key is a symbol, it's implicit that it's immutable, so Ruby can basically just do a comparison of the (hash function of the) object-id against the (hashed) object-ids of keys which are already stored in the Hash.

# 2.- Using symbols saves memory, because they are only stored once.

# 3.- Using symbols is a memory leak because they can never be garbage collected. So they have to be carefully used.

# ***What does require_relative do? How is it different from require?
# => require_relative allows to load a file that is relative to the file containing the require_relative statement.
# require requires a file relative to the current directory.
# When using require, the argument will be searched for via the load paths, while require_relative essentially uses the absolute path and is therefore more speed

# ***What are some ways to iterate through a hash?
# Hash#each
# ie: hash.each { | key, value| puts "#{key}: #{value}" }
# Hash#each_key
# ie: hash.each_key { | key | puts key }
# Hash#map
# ie: new_hash = hash.map { | key, value | value = "deleted!" }

# ***When refactoring virus_effects, what stood out to you about the variables, if anything?
# =>I did not knew about the existence of constant variables in Ruby before this challenge. It was a totaly new thing for me.

# What concept did you most solidify in this challenge?
# =>The Hash keys behavior using symbols (see above)