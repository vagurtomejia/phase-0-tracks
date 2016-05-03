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