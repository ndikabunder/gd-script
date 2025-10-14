extends Node

signal game_over

@export var health: int = 100
@export var max_health: int = 100
@export var damage: int = 20


# Called when the node enters the scene tree for the first time.
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("my_action"):
		apply_damage(damage)


# Applies damage to the health and checks for game over condition.
func apply_damage(amount: int) -> void:
	if health <= 0:
		print("Already at zero health!")
		return

	health -= amount
	# Ensure health does not go below zero
	health = clamp(health, 0, max_health)
	print("Health damaged! Current health:", health)

	if health == 0:
		handle_game_over()


# Handles the game over logic.
func handle_game_over() -> void:
	print("Game Over!")
	emit_signal("game_over")
