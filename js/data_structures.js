var colors = ["blue", "green", "pink", "orange",];
var names = ["Ed", "Seabiscuit", "Black Beauty", "Oreo"];

colors.push("purple");
names.push("Gertrude");

var horses = {}

for (var i = 0; i < colors.length; i++) {
    horses[colors[i]] = names[i];
}

console.log(horses);