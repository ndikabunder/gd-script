extends Node

# Cache node reference lebih awal untuk menghindari pencarian berulang tiap frame.
# Gunakan `@onready var` jika node pasti ada di scene saat _ready().
@onready var label: Label = $Label if has_node("Label") else null


func _input(event):
	# Event-based input handling: dipanggil untuk semua input event.
	# Jika ingin hanya menangani event yang belum ditangani oleh UI, gunakan
	# _unhandled_input(event) atau panggil event.accept() untuk menghentikan
	# propagasi.

	# Gunakan is_action_pressed/is_action_released untuk event berbasis aksi
	# yang didefinisikan di Project Settings -> Input Map (best practice).
	if event.is_action_pressed("my_action"):
		# Pastikan label ada sebelum mengaksesnya (hindari runtime error).
		if label:
			label.text = "Action Pressed!"

	if event.is_action_released("my_action"):
		if label:
			label.text = "Action Released!"
