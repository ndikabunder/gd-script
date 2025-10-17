class_name Character
extends Node2D

# attribute eksport untuk mengatur properti di Inspector
@export var profession: String = "Warrior"
@export var health: int = 100


# Membunuh karakter
func die() -> void:
	health = 0
	print("%s has died." % profession)
