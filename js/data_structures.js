
/*HORSES*/

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

console.log("Here are my horses: ")
console.log(horses);

/*CARS*/
function Car(name, color, canFly) {
  this.name = name;
  this.color = color;
  this.canFly = canFly;
  this.fly = function() {
    if (this.canFly)
      console.log("*fly*");
    else
      console.log("*imposible to fly!*");
  }
  this.printProperties = function() {
    console.log("\n=The car named " + this.name + '=');
    console.log("color:" + this.color);
    console.log("can fly? :" + this.canFly);
  }

}

console.log("----")
console.log("Let's change to cars!")
var deLorean =  new Car("Doc Brown’s De Lorean", "grey", false);
console.log(deLorean.name + ':');
console.log(deLorean.color);
deLorean.fly();
deLorean.canFly = true;
deLorean.fly();

var deLorean =  new Car("Doc Brown’s De Lorean", "grey", false);
deLorean.printProperties();

var ecto1 =  new Car("Ecto-1", "white", false);
ecto1.printProperties();
ecto1.fly();

var batmobile =  new Car("Batmobile", "black", true);
batmobile.printProperties();

var thunderbird =  new Car("Louise’s Thunderbird", "black", true);
thunderbird.printProperties();
thunderbird.fly();



