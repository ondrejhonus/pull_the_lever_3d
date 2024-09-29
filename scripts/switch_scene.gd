extends Button

@onready var globals = get_node("/root/global")

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level" + str(globals.current_level) + ".tscn")
