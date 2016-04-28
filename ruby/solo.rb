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
    #sentences
    if(target_language == "spanish")
      if(target_age < 13)
        sentences = [
            "Sigue tus sueños, puedes ser todo lo que desees.",
            "No importa cuántos amigos tienes, siempre hay lugar para uno más.",
            "Nunca está mal hacer una pregunta, está mal quedarse sin saber.",
            "Hoy es tu día para brillar!",
            "La oportunidad tocará a tu puerta, cuando llegue, ábrela.",
            "No molestes a tu hermano/a cuando tenga una escoba en la mano!",
            "Nunca confíes en un perro que está mirando tu comida!",
            "Cuando tengas una mala nota, muéstrasela a tu mamá cuando esté hablando por teléfono.",
            "Puedes encontrar tesoros donde otros no ven nada.",
            "Anímate a descubrir cosas nuevas.",
            "Dí siempre la verdad, te llevará por mejores caminos."]
      else
        sentences = [
          "¡Qué curioso es el hombre, nacer no pide, vivir no sabe, morir no quiere!.",
          "Le pedí a Dios todo para gozar la vida, él me dio vida para gozarlo todo.",
          "A largos sentimientos, largas consecuencias.",
          "Al comer retoños de bambú, recuerda al hombre que los plantó.",
          "Ama a tus vecinos, pero no te deshagas de la cerca.",
          "Ámame cuando menos lo merezca, ya que es cuando más lo necesito.",
          "Antes de iniciar la labor de cambiar el mundo, da tres vueltas por tu propia casa.",
          "Aprender sin pensar es inútil, pensar sin aprender peligroso. (Confucio)",
          "Apúrate lentamente.",
          "Cuando el dinero habla, la verdad calla.",
          "Cuando llegues a la última página, cierra el libro.",
          "Cuando el genio apunta a la Luna, el tonto se queda mirando el dedo.",
          "Cuando te inunde una enorme alegría, no prometas nada a nadie. Cuando te domine un gran enojo, no contestes ninguna carta.",
          "Cuando tres marchan juntos tiene que haber uno que mande.",
          "Dime y olvidaré, muéstrame y podría recordar, involúcrame y entenderé.",
          "Disfruta la vida, es más tarde de lo que crees.",
          "El agua hace flotar el barco, pero también puede hundirlo.",
          "El árbol más fuerte y frondoso vive de lo que tiene debajo.",
          "El bien que hicimos en la víspera es el que nos trae la felicidad por la mañana...",
          "El corazón jamás habla, pero hay que escucharlo para entender.",
          "El dragón inmóvil en las aguas profundas se convierte en presa de los cangrejos.",
          "El hombre que no sabe sonreír no debe abrir la tienda.",
          "El jade necesita ser tallado para ser una gema.",
          "El perro en la perrera se rasca las pulgas; el perro que caza no las siente.",
          "El dragón inmóvil en las aguas profundas se convierte en presa de los cangrejos."
        ]
      end
    else
        sentences = [
          "A closed mouth gathers no feet.",
          "A conclusion is simply the place where you got tired of thinking.",
          "A cynic is only a frustrated optimist.",
          "A fanatic is one who can't change his mind, and won't change the subject.",
          "An alien of some sort will be appearing to you shortly.",
          "Do not mistake temptation for opportunity.",
          "Flattery will go far tonight.",
          "He who laughs at himself never runs out of things to laugh at.",
          "He who laughs last is laughing at you.",
          "He who throws dirt is losing ground.",
          "Some men dream of fortunes, others dream of cookies.",
          "The greatest danger could be you.",
          "The world may be your oyster, but it doesn't mean you'll get its pearl.",
          "You will be hungry again in one hour.",
          "You can always find happiness at work on Friday.",
          "Confucius say: if you think you’re going to sum up your whole life on this little bit of paper, you’re crazy."
        ]
    end
    @sentence = sentences.sample
  end

  def prepare_batter
    preparation = "..Preparing batter"
    case preparation_option
      when "vegan" then preparation += " with soft tofu instead of eggs and milk."
      when "gluten-free" then preparation += " with rice and corn flour instead of wheat flour."
      when "standard" then preparation += " in an un-original way :-)."
    end
    puts preparation
  end
  def bake
    puts "...Baking ...Zsssshhhhhhzzzzz ... *sizzle*"
  end
  def tell_fortune(number)
    number.times { puts "The fortune cookie tells you: \n\"#{@sentence}\"" }
  end

end

puts "Welcome to the Fortune Cookie Factory, the only place where you can make your own cookies to measure!\n"

fortune_cookies = []
make_cookie = ""
while make_cookie != "n"
  make_cookie = ""
  while !["y","n"].include?(make_cookie)
    puts "\nDo you want to order a made to measure cookie? (y/n)"
    make_cookie = gets.chomp
    make_cookie.downcase!
  end
  if make_cookie != "n"
    age = ""
    while !age.match(/[0-9]+/)
      puts "How old is the person that will eat this fortune cookie?"
      age = gets.chomp
    end
    languages_options = ["spanish","english"]
    language = ""
    while !languages_options.include?(language)
      puts "Which is her/his language? Please type \"spanish\" or \"english\" (more languages will be available soon): "
      language = gets.chomp
    end
    dessert = Fortune_cookie.new(age.to_i, language)
    prepare_options = {"ok" => "vegan", "standard"  => "standard", "nogluten" => "gluten-free"}
    prepare_option = ""
    while !prepare_options.include?(prepare_option)
      puts "Our fortune cookies are vegan. If you are ok with that please type \"ok\", otherwise type \"standard\" for a non-vegan cookie or \"nogluten\" for a gluten-free cookie: "
      prepare_option = gets.chomp
    end
    puts "Thank you. We are preparing your cookie:"
    dessert.preparation_option = prepare_options[prepare_option]
    dessert.prepare_batter
    dessert.bake
    fortune_cookies.push(dessert)
  end
end

puts "\nHere is your order:"
fortune_cookies.each do |fortune_cookie|
  puts "\n*1 #{fortune_cookie.preparation_option} fortune cookie for a #{fortune_cookie.target_age} year old, #{fortune_cookie.target_language} speaking person."
  fortune_cookie.tell_fortune(1)
  end

puts "\nThank you for coming to the Fortune Cookie Factory!\n"
