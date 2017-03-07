var colors = ["blue", "green", "pink", "orange",];
var names = ["Ed", "Seabiscuit", "Black Beauty", "Oreo"];

colors.push("purple");
names.push("Gertrude");

var horses = {}

for (var i = 0; i < colors.length; i++) {
	horses[colors[i]] = names[i];
}

console.log(horses);

var car = {make: 'Dodge', 'year': 1998, 'sale': true};

function Car(make, year, sale) {
	console.log("Making new car:", this);
	this.make = make;
	this.year = year;
	this.sale = sale;
	this.honk = function() { console.log("Honk!"); };
	
	console.log("CAR INITIALIZATION COMPLETE");
}

var anotherCar = new Car("Ford", 2001, false);
anotherCar.honk();
console.log(anotherCar.make);
console.log(anotherCar.year);
console.log(anotherCar.sale);

anotherCar.honk("Toyota", 2018, false);
console.log(anotherCar.make);
console.log(anotherCar.year);
console.log(anotherCar.sale);
