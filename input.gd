extends Node


func _input(event):
	if event.is_action_pressed("my_action"):
		if has_node("Label"):
			$Label.text = "Action Pressed!"
		$Label.text = "Action Pressed!"
	if event.is_action_released("my_action"):
		if has_node("Label"):
			$Label.text = "Action Released!"
	if event.is_action_released("my_action"):
		$Label.text = "Action Released!"
