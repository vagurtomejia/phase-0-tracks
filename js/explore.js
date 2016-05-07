//BUSINESS LOGIC

// Method reverse
// input: a string
// output: the reversed string
// START reverse
function reverse(string) {
  //create reversed_string, a new empty string
  var reversed_string = '';
  //FOR EACH char in string starting from the end
  for (var i = string.length - 1; i >= 0; i--) {
    //add it to reversed_string
    reversed_string += string[i];
    }
  //return reversed_string
  return reversed_string;
// END reverse
}

//TEST CODE
//console.log(reverse("hello") == "olleh");
likeJavascript = true;
reversedWord = reverse("javascript");
if (likeJavascript)
  console.log(reversedWord);
