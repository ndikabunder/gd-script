extends Node

# Sinyal yang dipancarkan ketika pemain mencapai level baru
signal level_up

# Jumlah experience yang dibutuhkan untuk naik level
const EXPERIENCE_TO_LEVEL_UP: int = 20

# Jumlah experience yang diperoleh setiap kali timer timeout
const EXPERIENCE_GAIN: int = 5

# Menyimpan jumlah experience pemain saat ini
# @export membuat variabel bisa diedit di Inspector
@export var experience: int = 0


# Dipanggil ketika node siap dan ditambahkan ke scene tree
# Gunakan untuk inisialisasi awal dan koneksi sinyal
func _ready() -> void:
	# Koneksi sinyal level_up ke handler-nya
	level_up.connect(_on_level_up)


# Menangani event ketika tombol ditekan
# Fungsi ini dipanggil oleh sinyal "pressed" dari node Button
func _on_button_pressed() -> void:
	print("Button was pressed!")


# Menangani event timeout dari Timer node
# Fungsi ini menambahkan experience dan mengecek apakah pemain naik level
func _on_timer_timeout() -> void:
	_add_experience(EXPERIENCE_GAIN)


# Menangani event ketika pemain naik level
# Fungsi ini dipanggil ketika sinyal level_up di-emit
func _on_level_up() -> void:
	print("Congratulations! You've leveled up!")


# Menambahkan jumlah experience dan mengecek kondisi level up
# @param amount: Jumlah experience yang akan ditambahkan
func _add_experience(amount: int) -> void:
	experience += amount

	# Cek apakah experience sudah cukup untuk naik level
	if experience >= EXPERIENCE_TO_LEVEL_UP:
		_handle_level_up()


# Menangani proses level up dan reset experience
# Fungsi private ini memisahkan logic level up agar lebih modular
func _handle_level_up() -> void:
	print("Level Up!")
	level_up.emit()  # Godot 4 menggunakan .emit() bukan emit_signal()
	experience = 0  # Reset experience setelah level up
