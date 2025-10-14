extends Node

# Signals for game over event
signal game_over

@export var health := 100
@export var max_health := 100

var damage_taken := 20
var min_health := 0


# Handle unhandled input events
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("my_action"):
		apply_damage(damage_taken)


# Apply damage to the player
func apply_damage(amount: int) -> void:
	health -= amount
	# Ensure health doesn't go below min or above max
	health = clamp(health, min_health, max_health)
	print("Health decreased to: %d" % health)

	if health == 0:
		handle_game_over()


# Handle game over logic
func handle_game_over() -> void:
	print("Game Over!")
	emit_signal("game_over")
