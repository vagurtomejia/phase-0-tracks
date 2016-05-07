//BUSINESS LOGIC

// Method reverse
// input: a string
// output: the reversed string
function reverse(string) {

  //create reversed_string, a new empty string
  var reversed_string = '';
  //FOR EACH char in string starting from the end
  for (var i = string.length - 1; i >= 0; i--) {
    //add it to reversed_string
    reversed_string += string[i];
    }
  //RETURN reversed_string
  return reversed_string;
}

//TEST CODE

//console.log(reverse("hello") == "olleh");
reversedWord = reverse("javascript");

likeJavascript = true;
if (likeJavascript)
  console.log(reversedWord);
