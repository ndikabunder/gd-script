extends Node


func _ready() -> void:
	# Seed the random number generator with the current time
	var random_number: float = randf()
	var random_size: float = randf_range(140, 200)
	print("Generated random number: %.2f" % random_number)
	print("Generated random size: %.2f" % random_size)

	if random_number < 0.5:
		print("Result: Less than 0.5")
	else:
		print("Result: 0.5 or greater")
