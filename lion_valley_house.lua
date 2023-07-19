--[[
This code demonstrates how to teach kids basic programming in Lua. 
By having fun activities and games, kids will learn the basics of this programming language. 
--]]

-- Setting up a game
-- Store a table of items
items = {
	"apple",
	"ball",
	"cat",
	"dog"
}

-- Create a function to print out the items 
function printItems(items)
	for i, item in ipairs(items) do
		print(item)
	end
end

-- Create a function to add an item to the table
function addItem(items, item)
	table.insert(items, item)
end

-- Create a game
-- Ask the user for an item
print("What item would you like to add to the table?")
item = io.read()

-- Add the item to the table
addItem(items, item)

-- Print the table with the added item
print("Here is the table with the new item added:")
printItems(items)