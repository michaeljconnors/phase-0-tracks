class TodoList

	def initialize(items)
		@items = items
	end

	def get_items
		@items
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item)
		@items.delete(item)
	end

	def get_item(num)
		@items[num]
	end

end 

