extends Node

const GRAVITY := 9.8  # Constant explicitly typed as float
@export var damage := 20  # Variable Automatically typed as int


func _ready():
	var health = 100  # Variable Automatically typed as int
	var max_health: int = 150  # Explicitly typed as int
	var min_health := 0  # Variable Automatically typed as int

	print("Health:", health, " Max Health:", max_health, " Min Health:", min_health)
