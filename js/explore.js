//Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own. 
//In comments, pseudocode a function that takes a string as a parameter and reverses the 
//string. reverse("hello"), for example, should return "olleh". This isn't a task specific 
//to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" 
//instead of JavaScript-specific terms. Remember that you can add strings in JavaScript, so '' + 'a' would 
//result in the string 'a'. Take your time. This is the most valuable skill in programming: being able to 
//think through a problem logically.

// method to take string and reverse order
// input: variable string
// steps: 
//    create a variable(reverse word) that = "";
//    take input and put into string
//    take string and for each letter 
//      assign to a reverse word variable by adding the letters together
// output: return the word in reverse order

function reverse(str){
  var reversed_word = "";
  var word = str;
for (var i = 0; i < str.length; i++) {
	reversed_word = word[i] + reversed_word;
}	
console.log(reversed_word);
}

reverse("right");