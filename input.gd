extends Node


func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.text = "Action Pressed!"

	if event.is_action_released("my_action"):
		$Label.text = "Action Released!"
