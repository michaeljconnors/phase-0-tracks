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



// function that takes two objects and checks to see if they share one key value
// input: two objects
// steps: loop through one objects keys and values and see if any value is returned
//    IF the value is greater than 0 then return true
//       Else return false
// output: return either true or false

var eyes = {ed: "blue", becky: "hazel", mari: "brown"};
var eyes_two = {fred: "red", beth: "blue", mari: "brown"};

function compare(obj, obj_two) {

	for (var people in eyes) {
		var word = obj_two[people];
		if (obj_two[people] == eyes[people]){
			var is_true = true;
		}else{
			var is_true = false; }
		}
		console.log(is_true);
	}




// function that takes an integer for a length and returns an array of strings of a given length
// input: integer
// steps: set up an alphabet variable to select random letters, and a number variable to set up random numbers
// 			use the For function to loop the number of times the integer specifies 
//    		create a formula that randomly selects numbers and letters from the above variables
//       
// output: return the number the number of intigers inputed with 

function generateWord() {
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var integer = Math.ceil(Math.random() * 10);
var new_word = "";
for (var i = 0; i < integer; i++) {
	var number = Math.floor(Math.random() * 11);
	var letter = alphabet[number + 3];
	new_word= new_word + letter;
}
console.log(new_word);
}

function numberOfWords(num) {
var integer = num;
for (var i = 0; i < integer; i++) {
var word = generateWord();

}
}

numberOfWords(3);














longest(phrase);
longest(colors);
longest(names);

compare(eyes, eyes_two);