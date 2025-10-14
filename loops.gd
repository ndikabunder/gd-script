extends Node


func _ready() -> void:
	# List of character jobs
	var jobs: Array[String] = ["archer", "mage", "warrior"]
	print("--- Job List ---")
	for job in jobs:
		print("Job:", job)

	# Print numbers from 0 to 7
	print("--- Number Range ---")
	for n in range(8):
		print("Number:", n)

	# Random number accumulation until reaching 10
	var number: float = 0.0
	print("--- Random Growth ---")
	while number < 10.0:
		var increment := randf_range(1.0, 3.0)
		number += increment
		print("Added %.2f → Total: %.2f" % [increment, number])
