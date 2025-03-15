extends CanvasLayer

@export var storage_container = "demo_settings"
var storage = GStorage.create(storage_container)

@onready var input_key = $VBoxContainer/input_key
@onready var input_value = $VBoxContainer/input_value
@onready var lbl_output = $VBoxContainer/lbl_output

func _ready():
	$VBoxContainer/btn_save.pressed.connect(_on_save_pressed)
	$VBoxContainer/btn_load.pressed.connect(_on_load_pressed)
	$VBoxContainer/btn_delete.pressed.connect(_on_delete_pressed)

func _on_save_pressed():
	var key = input_key.text.strip_edges()
	var value = input_value.text.strip_edges()
	if key.is_empty() or value.is_empty():
		lbl_output.text = "⚠️ Enter key and value!"
		return
	storage.set_value(key, value)
	lbl_output.text = "✅ Saved: " + key + " = " + value

func _on_load_pressed():
	var key = input_key.text.strip_edges()
	if key.is_empty():
		lbl_output.text = "⚠️ Enter key!"
		return
	var value = storage.get_value(key, "❌ No data")
	lbl_output.text = "📄 " + key + " = " + str(value)

func _on_delete_pressed():
	var key = input_key.text.strip_edges()
	if key.is_empty():
		lbl_output.text = "⚠️ ВEnter key!"
		return
	storage.remove_value(key)
	lbl_output.text = "🗑 Deleted: " + key
