extends Node

var health = 100


func _ready():
	health = 40  # Set health to 40
	health += 10  # Increase health by 10
	health -= 5  # Decrease health by 5
	health *= 2  # Double the health
	health /= 5  # Reduce health to a fifth
	print(health)


func _input(event):
	if event.is_action_pressed("my_action"):
		health = 0
		print(health)
		$Label.text = "Health is now zero!"
