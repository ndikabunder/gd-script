extends Node

# Sinyal yang dipancarkan ketika health pemain berubah
# @param new_health: Nilai health yang baru setelah perubahan
signal health_changed(new_health: int)

# Health maksimum yang bisa dimiliki pemain
const MAX_HEALTH: int = 100

# Health minimum (pemain mati jika mencapai 0)
const MIN_HEALTH: int = 0

# Menyimpan nilai health pemain saat ini
# Menggunakan setter custom untuk validasi dan emit sinyal otomatis
@export var health: int = MAX_HEALTH:
	get:
		return health
	set(value):
		# Clamp nilai health antara MIN dan MAX
		var old_health := health
		health = clampi(value, MIN_HEALTH, MAX_HEALTH)

		# Hanya emit sinyal jika nilai benar-benar berubah
		if health != old_health:
			health_changed.emit(health)


# Dipanggil ketika node siap dan ditambahkan ke scene tree
# Digunakan untuk inisialisasi dan koneksi sinyal
func _ready() -> void:
	# Koneksi sinyal health_changed ke handler-nya
	health_changed.connect(_on_health_changed)

	# Emit sinyal pertama kali untuk sinkronisasi UI
	health_changed.emit(health)


# Menangani event ketika health berubah
# @param new_health: Nilai health yang baru
func _on_health_changed(new_health: int) -> void:
	print("Health changed to: %d" % new_health)

	# Cek kondisi khusus
	if new_health <= MIN_HEALTH:
		_handle_death()
	elif new_health <= MAX_HEALTH * 0.25:
		print("Warning: Low health!")


# Mengurangi health pemain (menerima damage)
# @param amount: Jumlah damage yang diterima
func take_damage(amount: int) -> void:
	health -= amount


# Menambah health pemain (healing)
# @param amount: Jumlah health yang dipulihkan
func heal(amount: int) -> void:
	health += amount


# Menangani kematian pemain ketika health mencapai 0
func _handle_death() -> void:
	print("Player died!")
	# Tambahkan logic kematian di sini (game over, respawn, dll)
