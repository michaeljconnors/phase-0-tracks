# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:

  # [Create a hash for grocery list items]
  # Set items
  # set default quantity - 1 of each item
  # print the list to the console [create method called print_list to output the list]
# output: [hash]

# Method to add an item to a list- create method called new_item
# input: list, item name, and optional quantity
# steps: add_new_item ("carrot" => 1)
#iterate through new list
# output: new list items added to master list with quantity



# Method to remove an item from the list- create method called remove_item
# input: called out item by iterating through the index of the hash
# steps: use .delete[-1] or call out by specific name
# output: item shoudl be removed from master list

# Method to update the quantity of an item- create method called update_item
# input: use .push to call out item and edit it from outside of the method
# steps: .push
# output: item should have new quantity and print updated version with master list

# Method to print a list and make it look pretty- grocery_final
# input: add some user friendly prompts and turn list into a string by iterating through each
# item on the list
# steps: add string, add iteration method
# output: the fully updated, printable list with updated quanitity in string format.

def grocery_list(items)
	grocery_list = {}
	items = items.split(" ")
	items.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end

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
p new_list
end

p grocery_list("carrots apples cereal pizza")
add_to_list("carrots apples cereal pizza", "grapes", 4)