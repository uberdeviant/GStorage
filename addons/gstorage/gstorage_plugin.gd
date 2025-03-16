@tool
extends EditorPlugin  # Это теперь чисто плагин для включения

func _enter_tree():
	print("✅ GStorage Plugin Enabled")

func _exit_tree():
	print("❌ GStorage Plugin Disabled")
