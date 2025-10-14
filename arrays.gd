extends Node


func _ready():
	var items: Array[String] = ["apple", "banana", "cherry"]
	print(items)  # Output: ["apple", "banana", "cherry"]
	print(items.size())  # Output: 3
	print(items[1])  # Output: "banana"
	items.append("date")
	print(items)  # Output: ["apple", "banana", "cherry", "date"]
	# items.remove(0)  # Uncomment to remove the first item
	print(items)  # Output: ["banana", "cherry", "date"]
	items.insert(1, "blueberry")  # Insert at index 1
	print(items)  # Output: ["banana", "blueberry", "cherry", "date"]
	items.clear()
	# print(items)  # Output: []
