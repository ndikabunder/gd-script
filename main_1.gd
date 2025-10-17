extends Node

# Mengimpor kelas Character dari file eksternal
@export var character_to_kill: Character


# funcsi _ready() dipanggil saat node siap
func _ready() -> void:
	# Null check untuk mencegah error
	if character_to_kill:
		character_to_kill.die()
	else:
		push_warning("character_to_kill belum di-assign di Inspector!")
