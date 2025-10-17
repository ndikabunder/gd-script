extends Node

# Bahasa Indonesia dan mudah dipahami
# Mendefinisikan enumerasi untuk tipe musuh dalam game.
enum EnemyType { ZOMBIE, ALIEN, ROBOT }

# Variabel yang dapat diatur di editor untuk memilih tipe musuh.
@export var enemy_type: EnemyType = EnemyType.ZOMBIE


# Variabel untuk menyimpan tipe musuh saat ini
func _ready():
	# Gunakan struktur match untuk menangani berbagai tipe musuh dengan jelas.
	match enemy_type:
		# Kasus untuk musuh Zombie
		EnemyType.ZOMBIE:
			# Tindakan khusus untuk musuh Zombie
			print("Current enemy is a Zombie.")
		EnemyType.ALIEN:
			print("Current enemy is an Alien.")
		EnemyType.ROBOT:
			print("Current enemy is a Robot.")
