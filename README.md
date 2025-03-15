# GStorage for Godot 4
🚀 Lightweight key-value storage system for Godot, inspired by `UserDefaults` in Swift

## 🔥 Features
✅ Fast read/write operations  
✅ Automatic file storage in `user://`  
✅ Easy API with per-container initialization  

## 📌 Installation
1. **Download via Godot Asset Library** (coming soon)
2. **Or install manually:**
   - Clone this repository or download it as a ZIP.
   - Move the `addons/gstorage/` folder to your Godot project.
   - Enable the plugin in `Project Settings -> Plugins`.

## 🎮 Usage Example
```gdscript
var storage = GStorage.create("settings")

# Store values
storage.set_value("music_volume", 0.8)
storage.set_value("username", "Player123")

# Read values
var volume = storage.get_value("music_volume", 1.0) # where 1.0 is the default value
var username = storage.get_value("username", "Guest")

# Remove values
storage.remove_value("username")

# Clear values
storage.clear()
```
