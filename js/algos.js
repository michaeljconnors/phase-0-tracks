// function to take array of words and return the longest word
// input: array of words
// steps:
//   create another empty array called length
//   create largest word vairable
//   	put array of words through loop that determines length length 
//			run IF statement that sets it as the largest word vairable if greater than the last variable
// output: returns largest value in array

function longest(array){
	var largestWord = "";
	for (var i = 0; i < array.length; i++) {
		if (largestWord.length < array[i].length) {
			largestWord = array[i];
		}
	} 
	console.log(largestWord);
}

// function that takes two objects and checks to see if they share one key or value
// input: two objects
// steps: loop through one objects keys and values and see if any value is returned
//    IF the value is greater than 0 then return true
//       Else return false
// output: return either true or false through console.log

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

// create function that generates a random word with the length of 10 letters max.
// input: none
// steps: set up an alphabet variable to select random letters, and a number variable with Math.ceil to select letters at random letters
// 			FOR LOOP the number of random number of times to select a random letter 
//    		create a formula that randomly selects numbers and letters from the above variables and adds to new_word variable     
// output: return the number the number of intigers inputed with 
//
// create another function that tell how many times the generate word should run and then add to new array
// input: integer
// steps: create an integer and words array variable
// 			FOR LOOP the number of times of the integer inputed
//			call the generate word method and put it into a word variable
//  		PUSH word into array
// output: return the words array

function generateWord() {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var integer = Math.ceil(Math.random() * 10);
	var new_word = "";
	for (var i = 0; i < integer; i++) {
		var number = Math.floor(Math.random() * 11);
		var letter = alphabet[number + 3];
		new_word = new_word + letter;
		
	}
	return new_word;
}

function numberOfWords(num) {
	var integer = num;
	var words_array = [];
	for (var i = 0; i < integer; i++) {
		var word = generateWord();
		words_array.push(word);
	}
	return words_array;
}

// driver code for all functions

var eyes = {ed: "blue", becky: "hazel", mari: "brown"};
var eyes_two = {fred: "red", beth: "blue", mari: "brown"};
var eyes_three = {ned: "orange", seth: "black", marci: "green"};
var colors = ["blue", "green", "red", "orange",];

longest(colors);
compare(eyes, eyes_two);
compare(eyes, eyes_three);

for (var i = 0; i < 10; i++) {
	var array = numberOfWords(3);
	console.log(array);
	longest(array);
}



