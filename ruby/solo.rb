#design of the fortune cookie class:
  # attributes:
  # target age : integer
  # target language : string
  # sentence : string
  # methods:
  # prepare_batter (takes preferences : gluten-free, vegan)
  # bake
  # tell_fortune

class Fortune_cookie
  attr_reader :target_age, :target_language, :sentence
  attr_accessor :preparation_option
  def initialize(age, language)
    @target_age = age
    @target_language = language
    @preparation_option = "vegan"
    create_sentence
  end
  def create_sentence

  end
  def prepare_batter
    preparation = "Preparing batter"
    case preparation_option
      when "vegan" then preparation += " with soft tofu instead of eggs and milk."
      when "gluten-free" then preparation += " with rice and corn flour instead of wheat flour."
      when "standard" then preparation += " in an un-original way :-)."
    end
    puts preparation
  end
  def bake
    puts "Zsssshhhhhhzzzzz ...baking. *sizzle*"
  end
  def tell_fortune(number)
    number.times { puts }
  end

end

dessert = Fortune_cookie.new(36, "spanish")
dessert.preparation_option = "gluten-free"
dessert.prepare_batter
dessert.bake