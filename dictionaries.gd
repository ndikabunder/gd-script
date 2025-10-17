extends Node


func _ready() -> void:
	var players := {
		"Alice": {level = 5, score = 10},
		"Bob": {level = 3, score = 15},
		"Charlie": {level = 4, score = 20}
	}

	players["Diana"] = {level = 2, score = 25}  # Menambahkan entri baru
	players["Alice"] = {level = 5, score = 12}  # Memperbarui entri yang ada

	for username in players:
		print(
			username,
			" has score: ",
			players[username].score,
			" and level: ",
			players[username].level
		)
