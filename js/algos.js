//BUSINESS LOGIC

/*longestWord*/
//input: phrasesArray, an array of words or phrases
//output: the longest word in phrasesArray
//example: phrasesArray = ["long phrase","longest phrase","longer phrase"] => output = "longest phrase"

function longestWord(phrasesArray) {

// declare an maxIndex variable and initialize it to 0
  var maxIndex = 0;
// declare a maxLength variable and initialize it to 0
  var maxLength = 0;
// FOR EACH phrase in the array
  nbPhrases = phrasesArray.length;

  for(var index = 0; index < nbPhrases; index++) {
//    find the length of the phrase
      phraseLength = phrasesArray[index].length;
//    IF the length is bigger than max_length
      if(phraseLength >= maxLength) {
//      set maxIndex to the value of the index of the current phrase
        maxIndex = index;
//      set maxLength to the value of the length  of the current phrase
        maxLength = phraseLength;
      }
  }

  // RETURN the phrase of phrases_array stocked at index number max_index
    return phrasesArray[maxIndex];
}


/*findMatch*/
//inputs: object1, object2
//outputs: true if the objects share at least one key-value pair. //         false if no pairs match
//example: object1 = {name: "Steven", age: 54} and object2 = {name: "Tamir", age: 54} => output = true

function findMatch(object1, object2) {

  //declare a keyHasMatch variable
  var keyHasMatch;
  //FOR EACH key1 in object1
  object1Keys = Object.keys(object1);

  for(var ind1 = 0; ind1 < object1Keys.length; ind1++) {

    key1 = object1Keys[ind1];
    //set keyHasMatch to false
    keyHasMatch = false;
    //FOR EACH key2 in object2 OR UNTIL a match is found
    object2Keys = Object.keys(object2);

    for(var ind2 = 0; ind2 < object2Keys.length && !keyHasMatch; ind2++) {

      key2 = object2Keys[ind2];

      //compare key1 and key2
      //IF key1 equals key2
      if(key1 == key2) {
        //compare value1 and value2
        //IF value1 equals value2
        if(object1[key1] == object2[key2]) {
          //return true
          return true;
          } else {
          //ELSE set keyHasMatch to true
          keyHasMatch = true;
        }
      }
    }
  }
  //return false
  return false;
}


/*buildRandomString*/
//input: length, the length of the wanted string
//output: random string with a minimum of 1 letter and a maximum of 10 letters.

function buildRandomString(length) {
  //declare and initialize a string of the alphabet caracters
  var alphabet = 'abcdefghijklmnopqrstuvwxyz';
  //declare an empty result string
  var resultString = '';
  //REPEAT length times
  for (var i = 0; i <length; i++) {
    //add a random character to the result string
    resultString += alphabet[Math.round(Math.random() * (alphabet.length - 1))];
    }
  //return the result string
  return resultString;
}


/*buildArray*/
//input: length, the length of the wanted array
//output: array of strings of the given length

function buildArray(length) {
  //declare a result array
  var resultArray = [];
  //REPEAT length times
  for (var i = 0; i <length; i++) {
    //generate randNumber, a random number between 0 and 10
    var randNumber = Math.floor(Math.random() * 10) + 1;
    //generate randString, a random string of length randNumber
    var randString = buildRandomString(randNumber);
    //add the string to the result array
    resultArray.push(randString);
    }
  return resultArray;
}



//TEST CODE
//longestWord
console.log("----Testing longestWord----");
console.log(longestWord(["long phrase","longest phrase","longer phrase"]));

//findMatch
console.log("----Testing findMatch----");
person1 = {name: "Steven", age: 54};
person2 = {name: "Tamir", age: 54};
console.log(findMatch(person1, person2));

person3 = {name: "Tamir", age: 38};
console.log(findMatch(person1, person3));

car1 = {brand: "Seat", model: "Ibiza"};
console.log(findMatch(person1, car1));

//buildArray & longestWord
console.log("----Testing buildArray & longestWord----");
for (var i = 0; i < 10; i++) {
  //generate randNumber, a random number between 0 and 10
  var randNumber = Math.floor(Math.random() * 10) + 1;
  var testArray = buildArray(randNumber);
  var word = longestWord(testArray);
  console.log(word);
}