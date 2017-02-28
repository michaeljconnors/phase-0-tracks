# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:

  # [Create a hash for grocery list items]
  # Set items
  # set default quantity - 1 of each item
  # print the list to the console [create method called print_list to output the list]
# output: [hash]

def grocery_list(items)
	grocery_list = {}
	items = items.split(" ")
	items.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end

# Method to add an item to a list- create method called new_item
# input: list, item name, and optional quantity
# steps: add_new_item ("carrot" => 1)
#iterate through new list
# output: new list items added to master list with quantity

def add_to_list(list, item_name, qty)
if list.class == Hash
new_list = list
else
  new_list = grocery_list(list)
end
if qty == "none" 
  qty = 1
end
new_list[item_name] = qty
print(new_list)
end

# Method to remove an item from the list- create method called remove_item
# input: called out item by iterating through the index of the hash
# steps: use .delete[-1] or call out by specific name
# output: item shoudl be removed from master list


def remove_from_list(list, item)
  list.delete(item)
  print(list)
end

# Method to update the quantity of an item- create method called update_item
# input: use .push to call out item and edit it from outside of the method
# steps: .push
# output: item should have new quantity and print updated version with master list

def update_quanity(list, item, new_qty)
p list[item]= [new_qty]
print(list)
end


# Method to print a list and make it look pretty- grocery_final
# input: add some user friendly prompts and turn list into a string by iterating through each
# item on the list
# steps: add string, add iteration method
# output: the fully updated, printable list with updated quanitity in string format.


def print(list)
  p list
end

list = grocery_list("Carrots Apples Cereal Pizza")

add_to_list(list, "Lemonade", 2)
add_to_list(list, "Tomatoes", 3)
add_to_list(list, "Onions", 1)
add_to_list(list, "Ice Cream", 4)

remove_from_list(list, "Lemonade")

update_quanity(list, "Ice Cream", 1)

print(list)

# What did you learn about pseudocode from working on this challenge? It's very hard to predict every detail of what you are going to do when phedo coding. But it is super helpful to do it so you can think through the problem.
# What are the tradeoffs of using arrays and hashes for this challenge? Hashes allowed me to have two subsets of data and connect them to each other with made it great. Arrays would have been a lot more work to produce.
# What does a method return? What ever code you instruct it to by manipulating hte data.
# What kind of things can you pass into methods as arguments? If the input is an array or a hash, 
# How can you pass information between methods? You can nest the methods in between each other so they can operate.
# What concepts were solidified in this challenge, and what concepts are still confusing? Manipulating hashes were solidified. What confusing is iterating in method for a hash, which I did not end up doing.



