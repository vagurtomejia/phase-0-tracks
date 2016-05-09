
//input: phrasesArray, an array of words or phrases
//output: the longest word in phrasesArray
//example: phrasesArray = ["long phrase","longest phrase","longer phrase"]
//         output = "longest phrase"

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


//TEST CODE
console.log(longestWord(["long phrase","longest phrase","longer phrase"]));


