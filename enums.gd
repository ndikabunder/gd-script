extends Node

#Bahasa Indonesia dan mudah dipahami
# Mendefinisikan enumerasi untuk tipe musuh dalam game.
enum EnemyType { ZOMBIE, ALIEN, ROBOT }

# Variabel yang dapat diatur di editor untuk memilih tipe musuh.
@export var enemy_type: EnemyType = EnemyType.ZOMBIE

# Variabel untuk menyimpan tipe musuh saat ini
var current_enemy_type: EnemyType = EnemyType.ZOMBIE


func _ready():
	match enemy_type:
		EnemyType.ZOMBIE:
			print("Current enemy is a Zombie.")
		EnemyType.ALIEN:
			print("Current enemy is an Alien.")
		EnemyType.ROBOT:
			print("Current enemy is a Robot.")
