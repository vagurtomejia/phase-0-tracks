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




//TEST CODE
//longestWord
console.log(longestWord(["long phrase","longest phrase","longer phrase"]));

//findMatch
person1 = {name: "Steven", age: 54};
person2 = {name: "Tamir", age: 54};
console.log(findMatch(person1, person2));

person3 = {name: "Tamir", age: 38};
console.log(findMatch(person1, person3));

car1 = {brand: "Seat", model: "Ibiza"};
console.log(findMatch(person1, car1));