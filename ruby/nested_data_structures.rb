
ecuador = {
  official_name: "República del Ecuador",
  capital: "Quito",
  languages: ["Spanish", "Kichwa", "Shuar"],
  government: "Unitary presidential constitutional republic",
  area: [283560, "km2"],
  location: "South America",
  main_cities: {
    quito: {
      full_name: "San Francisco de Quito",
      population: 2671191,
      elevation: [2850, "m"],
      province:  "Pichincha",
      popular_sayings: [
        "¡Ele así han de venirbs!",
        "Que cague de risa",
        "A que hora te vas vos ve!!!",
        "Ele, Mijita",
        "No seas malito",
        "Te paso viendo",
        "Harázme el favorcito que te pedí...",
        "Nofff",
        "Sifff",
        "No frieguesfff",
        "Maesstrroo!!!....",
        "Profeshhor!!"
        ]
    },
    guayaquil: {
      full_name: "Santiago de Guayaquil",
      population: 3500000,
      elevation: [4, "m"],
      province:  "Guayas",
      popular_sayings: []
    },
    cuenca: {
      full_name: "Santa Ana de los cuatro ríos de Cuenca",
      population: 400000,
      elevation: [2560, "m"],
      province:  "Azuay",
      popular_sayings: []
    }
  }
}

puts "Ecuador, officially #{ecuador[:official_name]} is a beautiful and wonderful country of #{ecuador[:location]}. Its capital city is #{ecuador[:capital]}, formally #{ecuador[:main_cities][:quito][:full_name]}."
puts "#{ecuador[:capital]} has an elevation of #{ecuador[:main_cities][:quito][:elevation][0]} #{ecuador[:main_cities][:quito][:elevation][1]} and a population of  #{ecuador[:main_cities][:quito][:population]} people. One of the most popular sayings in #{ecuador[:capital]} is \'#{ecuador[:main_cities][:quito][:popular_sayings].sample}\'."
