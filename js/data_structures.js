
//colors array declaration
colors = ["snorkel blue", "iced coffee", "green flash", "peach echo"];

//names array declaration
names = ["Spirit", "Trojan", "Pegasus", "My Little Pony"];

//add elements to colors and names arrays
colors.push("black");
names.push("Tornado");

//declare horses object
var horses = {};

//manage the case when the 2 arrays has a different length
nbColors = colors.length;
nbNames = names.length;
nbIterations = nbColors >= nbNames ? nbNames : nbColors;

//populate the object
for (var i = 0; i < nbIterations; i++)
  horses[names[i]] = colors[i];

console.log(horses);