// function to take array of words and return the longest word
// input: array of words
// steps:
//   create another empty array called length
//   create largest word vairable
//   	put array of words through loop that determines length length 
//			run IF statement that sets it as the largest word vairable if greater than the last variable
// output: returns largest value in array

var phrase = ["long phrase","longest phrase","longer phrase", "oh no you didn't", "the usc trojans"];
var colors = ["blue", "green", "pink", "orange",];
var names = ["Ed", "Seabiscuit", "Black Beauty", "Oreo"];


function longest(array){
  var largestWord = "";
  for (var i = 0; i < array.length; i++) {
	if (largestWord.length < array[i].length) {
	  largestWord = array[i];
	}
	} 
	console.log(largestWord);
}


longest(phrase);
longest(colors);
longest(names);